package com.tebakgambar.model;

import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class QuestionSavedData {
    public static final String TYPE_BIASA = "biasa";
    public static final String TYPE_RAJA = "raja";
    public static final String TYPE_RECEH = "receh";
    private String _type;
    public int globalIndex;
    public boolean isBoss;
    public boolean isCheckPoint;
    public boolean isReceh;
    public boolean open;
    public int order;
    public boolean solved;

    public static String toSavedData(List<QuestionSavedData> list) {
        StringBuilder sb = new StringBuilder();
        for (QuestionSavedData questionSavedData : list) {
            sb.append("#");
            sb.append(questionSavedData.globalIndex);
            sb.append(questionSavedData.open ? "-true" : "-false");
        }
        return sb.substring(1);
    }

    public String getType() {
        if (this._type == null) {
            if (this.isReceh) {
                this._type = TYPE_RECEH;
            } else if (this.isBoss || this.isCheckPoint) {
                this._type = TYPE_RAJA;
            } else {
                this._type = TYPE_BIASA;
            }
        }
        return this._type;
    }

    public boolean isHintAvailable() {
        return getType().equals(TYPE_BIASA) || getType().equals(TYPE_RECEH);
    }

    public boolean isUsingTimer() {
        return getType().equals(TYPE_RAJA);
    }
}
