/** Local backup integration check. Uses only synthetic, temporary data. */
import fs from 'node:fs';import path from 'node:path';import assert from 'node:assert/strict';import {execFileSync,spawnSync} from 'node:child_process';
import {BOT_ROOT,readConfig} from '../src/config.js';import {Store} from '../src/store.js';import {Engine} from '../src/engine.js';import {Catalog} from '../src/catalog.js';
fs.mkdirSync(path.join(BOT_ROOT,'runtime'),{recursive:true,mode:0o700});const dir=fs.mkdtempSync(path.join(BOT_ROOT,'runtime/backup-test-'));
const original=path.join(dir,'active.sqlite'),copy=path.join(dir,"snapshot ' quote.sqlite"),config=readConfig({DATABASE_PATH:original,SHUFFLE_QUESTIONS:'false'});
const catalog=new Catalog(config.assetRoot),store=new Store(original),engine=new Engine(store,catalog,config);
try {
 engine.touch(7,'Synthetic backup test');const session=engine.start(7,7);engine.hint(session.id,7,7);engine.answer(session.id,7,7,'jambu batu');
 const script=path.join(BOT_ROOT,'dist/scripts/backup.js'),env={...process.env,DATABASE_PATH:original};
 execFileSync(process.execPath,[script,copy],{env,stdio:'pipe'});
 const saved=new Store(copy);try {assert.equal(saved.player(7)!.score,10);assert.equal(new Engine(saved,catalog,config).progress(7,1).position,1);assert.equal(fs.statSync(copy).mode&0o777,0o600);}finally {saved.close();}
 assert.equal(spawnSync(process.execPath,[script,copy],{env,stdio:'pipe'}).status,1);
 console.log('PASS: compiled backup, live WAL consistency, persisted score/progress, mode 600, quoted path binding and refusal to overwrite an existing backup.');
}finally {store.close();fs.rmSync(dir,{recursive:true});}
