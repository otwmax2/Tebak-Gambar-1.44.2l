package com.tebakgambar.model.request;

import android.content.Context;
import b7.c;
import com.facebook.internal.ServerProtocol;
import com.google.gson.f;
import java.util.ArrayList;
import java.util.List;
import y8.y;

/* JADX INFO: loaded from: classes2.dex */
public class LevelStructure2 {
    public int hint;

    @c("last_level")
    public int level;

    @c("saved_data")
    public List<SavedDataItem> savedData;

    public static class SavedDataItem {
        public int id;

        @c("opened")
        public boolean open;
    }

    public LevelStructure2(Context context) {
        try {
            this.level = Integer.parseInt(y.E(context));
        } catch (Exception unused) {
            this.level = 1;
        }
        try {
            this.hint = Integer.parseInt(y.A(context, this.level));
        } catch (Exception unused2) {
            this.hint = 5;
        }
        String strG = y.G(context, this.level);
        if (isValidLevelData(strG)) {
            this.savedData = listLevelToSavedData(strG);
        } else {
            int i10 = this.level;
            this.savedData = listLevelToSavedData(y.o((i10 - 1) * 20, ((i10 - 1) * 20) + 19));
        }
    }

    public static boolean isValidLevelData(String str) {
        return str != null && (str.contains(ServerProtocol.DIALOG_RETURN_SCOPES_TRUE) || str.contains("false")) && str.split("#").length == 20;
    }

    private static List<SavedDataItem> listLevelToSavedData(String str) {
        ArrayList arrayList = new ArrayList();
        for (String str2 : str.split("#")) {
            String[] strArrSplit = str2.split("-");
            int i10 = Integer.parseInt(strArrSplit[0]);
            boolean zEquals = strArrSplit[1].equals(ServerProtocol.DIALOG_RETURN_SCOPES_TRUE);
            SavedDataItem savedDataItem = new SavedDataItem();
            savedDataItem.id = i10;
            savedDataItem.open = zEquals;
            arrayList.add(savedDataItem);
        }
        return arrayList;
    }

    private static String savedDataToListLevel(List<SavedDataItem> list) {
        StringBuilder sb = new StringBuilder();
        for (SavedDataItem savedDataItem : list) {
            sb.append(savedDataItem.id);
            sb.append("-");
            sb.append(savedDataItem.open ? ServerProtocol.DIALOG_RETURN_SCOPES_TRUE : "false");
            sb.append("#");
        }
        int iLastIndexOf = sb.lastIndexOf("#");
        if (iLastIndexOf >= 0) {
            sb.deleteCharAt(iLastIndexOf);
        }
        return sb.toString();
    }

    public String getListLevel() {
        return savedDataToListLevel(this.savedData);
    }

    public void setListLevel(String str) {
        this.savedData = listLevelToSavedData(str);
    }

    public String toJsonString() {
        return new f().t(this);
    }
}
