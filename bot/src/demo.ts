/** Public, ephemeral demonstration. All Telegram requests are intercepted locally. */
import http from 'node:http';
import fs from 'node:fs';
import path from 'node:path';
import { randomBytes } from 'node:crypto';
import type { Update } from 'grammy/types';
import { readConfig, BOT_ROOT } from './config.js';
import { Catalog } from './catalog.js';
import { Store } from './store.js';
import { Engine } from './engine.js';
import { Media } from './media.js';
import { createRuntime } from './bot.js';
import { MockTelegram, DEMO_BOT, textUpdate, callbackUpdate } from './mock-telegram.js';

const config = readConfig({...process.env, BOT_TOKEN:'', ADMIN_IDS:'', DATABASE_PATH:':memory:', SHUFFLE_QUESTIONS:'false', RATE_LIMIT_MS:'0'});
const store = new Store(':memory:'), catalog = new Catalog(config.assetRoot), engine = new Engine(store,catalog,config);
class DemoMedia extends Media {
  photo = Buffer.alloc(0);
  override async download(): Promise<Buffer> { return this.photo; }
}
const media = new DemoMedia(config), runtime=createRuntime(engine,config,{botInfo:DEMO_BOT,rateLimit:false,media});
const transport=new MockTelegram();transport.attach(runtime.bot);
const visitors=new Map<string,number>(), fileOwners=new Map<string,number>();let userCounter=1000, updateCounter=100000, queue=Promise.resolve();
function visitor(req:http.IncomingMessage,res:http.ServerResponse):number {
  const cookie=/(?:^|;\s*)demo=([a-f0-9]{32})(?:;|$)/.exec(req.headers.cookie??'')?.[1];
  if(cookie&&visitors.has(cookie))return visitors.get(cookie)!;
  if(visitors.size>=500)throw new Error('Demo capacity reached');
  const session=randomBytes(16).toString('hex'),uid=++userCounter;visitors.set(session,uid);
  res.setHeader('Set-Cookie',`demo=${session}; HttpOnly; SameSite=Lax; Path=/`);engine.touch(uid,`Pemain Demo ${uid}`,uid);return uid;
}
function json(res:http.ServerResponse,body:unknown,status=200):void{res.writeHead(status,{'Content-Type':'application/json; charset=utf-8','Cache-Control':'no-store'});res.end(JSON.stringify(body));}
async function body(req:http.IncomingMessage):Promise<Record<string,unknown>>{
 let total=0;const chunks:Buffer[]=[];for await(const chunk of req){total+=chunk.length;if(total>7*1024*1024)throw new Error('Request too large');chunks.push(Buffer.from(chunk));}
 const parsed:unknown=JSON.parse(Buffer.concat(chunks).toString());if(!parsed||typeof parsed!=='object'||Array.isArray(parsed))throw new Error('Invalid JSON');return parsed as Record<string,unknown>;
}
const page = fs.readFileSync(path.join(BOT_ROOT,'data/demo.html'));
const server=http.createServer((req,res)=>{
 void(async()=>{
  const url=new URL(req.url??'/', 'http://demo.invalid');
  if(req.method==='GET'&&url.pathname==='/'){res.writeHead(200,{'Content-Type':'text/html; charset=utf-8','Cache-Control':'no-store'});res.end(page);return;}
  if(req.method==='GET'&&url.pathname==='/health'){json(res,{mode:'offline-demo',telegramNetwork:false,questions:400});return;}
  if(req.method==='GET'&&url.pathname.startsWith('/media/')){
   const name=url.pathname.slice(7);if(!/^[a-zA-Z0-9_.-]+$/.test(name)){json(res,{error:'Not found'},404);return;}
   const cookie=/(?:^|;\s*)demo=([a-f0-9]{32})(?:;|$)/.exec(req.headers.cookie??'')?.[1];
   if(!cookie||fileOwners.get(name)!==visitors.get(cookie)){json(res,{error:'Not found'},404);return;}
   const file=transport.files.get(name);if(!file){json(res,{error:'Media expired'},404);return;}
   const type=name.endsWith('.png')?'image/png':name.endsWith('.webp')?'image/webp':name.endsWith('.jpg')?'image/jpeg':name.endsWith('.json')?'application/json':name.endsWith('.ogg')?'audio/ogg':'application/octet-stream';
   res.writeHead(200,{'Content-Type':type,'Cache-Control':'no-store','X-Content-Type-Options':'nosniff'});res.end(file);return;
  }
  if(req.method!=='POST'||!['/api/message','/api/callback','/api/photo'].includes(url.pathname)){json(res,{error:'Not found'},404);return;}
  const uid=visitor(req,res),input=await body(req),chat=input.group===true?-100:uid;
  // Serialize mock media state, API record collection and grammY update handling.
  const task=queue.then(async()=>{
   transport.calls.length=0;let update:Update;
   if(url.pathname==='/api/photo'){
    const encoded=String(input.photo??'');if(encoded.length>7*1024*1024)throw new Error('Photo too large');
    media.photo=Buffer.from(encoded.replace(/^data:image\/[^;]+;base64,/,''),'base64');if(media.photo.length>config.photoMaxBytes)throw new Error('Photo too large');
    const base=textUpdate(++updateCounter,'',uid,chat);if(!('message'in base)||!base.message)throw new Error('Message absent');
    update={update_id:base.update_id,message:{...base.message,photo:[{file_id:'demo-photo',file_unique_id:'demo-photo',width:500,height:500,file_size:media.photo.length}]}};
   }else if(url.pathname==='/api/callback'){
    const data=String(input.data??'');if(data.length>128)throw new Error('Callback too long');update=callbackUpdate(++updateCounter,data,uid,chat);
   }else{
    const text=String(input.text??'').slice(0,4000);update=textUpdate(++updateCounter,text,uid,chat);
   }
   await runtime.bot.handleUpdate(update);
   for(const call of transport.calls)if(call.upload)fileOwners.set(call.upload,uid);
   for(const name of fileOwners.keys())if(!transport.files.has(name))fileOwners.delete(name);
   const events=transport.calls.filter(c=>(c.method.startsWith('send')&&c.payload.chat_id===chat)||c.method==='answerCallbackQuery').map(c=>({method:c.method,text:c.payload.text??c.payload.caption??'',upload:c.upload?`/media/${c.upload}`:null,buttons:(c.payload.reply_markup as {inline_keyboard?:unknown} | undefined)?.inline_keyboard??[]}));
   const p=store.player(uid);json(res,{events,player:p?{name:p.name,lives:p.lives,unlocked:p.unlocked,selected:p.selected,score:p.score}:null,mode:'offline-demo'});
  });queue=task.catch(()=>{});await task;
 })().catch(()=>{if(!res.headersSent)json(res,{error:'Demo request rejected. Try a smaller image or reload.'},400);else res.end();});
});
const port=Number(process.env.PORT??3000);server.listen(port,'0.0.0.0',()=>console.log(`Offline bot demo listening on 0.0.0.0:${port}; NO Telegram connection.`));
const timer=setInterval(()=>void runtime.flushJobs().catch(()=>{}),config.reminderMs);timer.unref();
const stop=()=>{clearInterval(timer);server.close(()=>{void runtime.close().then(()=>store.close());});};process.once('SIGTERM',stop);process.once('SIGINT',stop);
