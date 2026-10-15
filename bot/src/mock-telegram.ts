/** Offline-only transport for tests/demo. Never used by production index.ts. */
import { InputFile, type Bot, type Transformer } from 'grammy';
import type { Update, UserFromGetMe } from 'grammy/types';
export const DEMO_BOT: UserFromGetMe = {id: 777000, is_bot: true, first_name: 'Tebak Gambar', username: 'TebakGambarOfflineDemoBot', can_join_groups: true, can_manage_bots: false, supports_join_request_queries: false, can_read_all_group_messages: true, supports_inline_queries: true, can_connect_to_business: false, has_main_web_app: false, has_topics_enabled: false, allows_users_to_create_topics: false};
export interface RecordedCall { method: string; payload: Record<string, unknown>; upload?: string }
export class MockTelegram {
  readonly calls: RecordedCall[] = [];
  readonly files = new Map<string, Buffer>();
  messageId = 100;
  attach(bot: Bot): void {
    const transport: Transformer = async (_prev, method, payload) => {
      const p = payload as Record<string, unknown>, call: RecordedCall = {method, payload: p};
      for (const field of ['photo','sticker','document']) {
        const file = p[field];
        if (file instanceof InputFile) {
          const raw = await file.toRaw(); let data: Buffer;
          if (raw instanceof Uint8Array) data = Buffer.from(raw);
          else { const chunks: Buffer[] = []; for await (const chunk of raw) chunks.push(Buffer.from(chunk)); data = Buffer.concat(chunks); }
          const name = `${++this.messageId}-${(file.filename ?? 'file.bin').replace(/[^a-zA-Z0-9_.-]/g,'_')}`;
          this.files.set(name, data); call.upload = name;
          if (this.files.size > 200) this.files.delete(this.files.keys().next().value!);
        }
      }
      this.calls.push(call); if (this.calls.length > 1000) this.calls.shift();
      let result: unknown = true;
      if (method === 'getMe') result = DEMO_BOT;
      else if (method === 'getChatMember') result = {status: 'member', user: {id: p.user_id, is_bot: false, first_name: 'Player'}};
      else if (method === 'getFile') result = {file_id: p.file_id, file_unique_id: 'mock-photo', file_path: 'photos/mock-photo.jpg'};
      else if (method.startsWith('send')) result = {message_id: ++this.messageId, date: Math.floor(Date.now()/1000), chat: {id: p.chat_id, type: Number(p.chat_id) > 0 ? 'private' : 'group'}, from: DEMO_BOT, text: p.text, caption: p.caption, photo: method === 'sendPhoto' ? [{file_id:'mock-image',file_unique_id:'mock-image',width:400,height:400}] : undefined};
      // This is a deliberately synthetic Bot API boundary, not network I/O.
      return {ok: true, result} as never;
    };
    bot.api.config.use(transport);
  }
}
export function textUpdate(updateId: number, text: string, userId = 1, chatId = userId): Update {
  const command = text.startsWith('/') ? [{type: 'bot_command' as const, offset: 0, length: text.split(/\s/)[0]!.length}] : undefined;
  return {update_id: updateId, message: {message_id: updateId, date: Math.floor(Date.now()/1000), from: {id: userId, is_bot:false, first_name:`Pemain ${userId}`}, chat: chatId > 0 ? {id:chatId,type:'private',first_name:`Pemain ${userId}`} : {id:chatId,type:'group',title:'Grup demo'}, text, ...(command ? {entities: command} : {})}};
}
export function callbackUpdate(updateId: number, data: string, userId = 1, chatId = userId): Update {
  const base = textUpdate(updateId, 'Tombol', userId, chatId);
  if (!('message' in base)) throw new Error('Mock message absent');
  return {update_id: updateId, callback_query: {id:`callback-${updateId}`, chat_instance:'offline', from:{id:userId,is_bot:false,first_name:`Pemain ${userId}`}, message:base.message, data}};
}
