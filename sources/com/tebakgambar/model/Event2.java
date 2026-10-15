package com.tebakgambar.model;

import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public class Event2 {
    public ArrayList<CustomBanner> custom_banner;
    public ArrayList<ResultDuelGambar> duel_gambar;
    public ArrayList<ResultEvents> event;
    public ArrayList<ResultEventClue> event_clue;

    @b7.c("native_index")
    public int nativeIndex;

    public BaseEvent getFirstEvent() {
        ArrayList<ResultEvents> arrayList = this.event;
        if (arrayList != null && arrayList.size() > 0) {
            return this.event.get(0);
        }
        ArrayList<ResultEventClue> arrayList2 = this.event_clue;
        if (arrayList2 == null || arrayList2.size() <= 0) {
            return null;
        }
        return this.event_clue.get(0);
    }
}
