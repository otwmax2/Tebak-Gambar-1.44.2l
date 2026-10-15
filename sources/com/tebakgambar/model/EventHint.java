package com.tebakgambar.model;

import com.google.gson.f;
import com.tebakgambar.TGApplication;
import com.vungle.mediation.BuildConfig;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Random;
import y8.y;

/* JADX INFO: loaded from: classes2.dex */
public class EventHint {
    public static final String KEY_EVENT_HINT = "event-hint";
    private SaveData _saveData;
    private String answer;
    private String eventId;
    private f gson = new f();
    private String soalId;

    public static class SaveData {
        String eventId;
        ArrayList<Hint> hints;

        public static class Hint {
            public int chance;
            public int[] hint;
            public String soalId;
        }
    }

    public EventHint(String str, String str2, String str3) {
        this.eventId = str;
        this.soalId = str2;
        this.answer = str3;
    }

    private SaveData getCurrentSaveData() {
        if (this._saveData == null) {
            String strL = y.L(TGApplication.d(), KEY_EVENT_HINT);
            if (strL != null) {
                try {
                    SaveData saveData = (SaveData) this.gson.k(strL, SaveData.class);
                    if (saveData.eventId.equals(this.eventId)) {
                        this._saveData = saveData;
                    } else {
                        SaveData saveData2 = new SaveData();
                        this._saveData = saveData2;
                        saveData2.eventId = this.eventId;
                        saveData2.hints = new ArrayList<>();
                    }
                } catch (Exception e10) {
                    e10.printStackTrace();
                    SaveData saveData3 = new SaveData();
                    this._saveData = saveData3;
                    saveData3.eventId = this.eventId;
                    saveData3.hints = new ArrayList<>();
                }
            } else {
                SaveData saveData4 = new SaveData();
                this._saveData = saveData4;
                saveData4.eventId = this.eventId;
                saveData4.hints = new ArrayList<>();
            }
        }
        return this._saveData;
    }

    private int[] getLockedHintPosition(int[] iArr) {
        int[] iArr2 = new int[getMaxHintLength() - iArr.length];
        int i10 = 0;
        for (int i11 = 0; i11 < this.answer.length(); i11++) {
            if (this.answer.charAt(i11) != ' ' && Arrays.binarySearch(iArr, i11) < 0) {
                iArr2[i10] = i11;
                i10++;
            }
        }
        return iArr2;
    }

    private int getMaxHintLength() {
        return this.answer.replaceAll(" ", BuildConfig.FLAVOR).length();
    }

    private SaveData.Hint getSavedDataHint() {
        SaveData currentSaveData = getCurrentSaveData();
        ArrayList<SaveData.Hint> arrayList = currentSaveData.hints;
        if (arrayList == null) {
            currentSaveData.hints = new ArrayList<>();
            SaveData.Hint hint = new SaveData.Hint();
            hint.soalId = this.soalId;
            hint.chance = 1;
            hint.hint = new int[0];
            currentSaveData.hints.add(hint);
            return hint;
        }
        for (SaveData.Hint hint2 : arrayList) {
            if (hint2.soalId.equals(this.soalId)) {
                return hint2;
            }
        }
        SaveData.Hint hint3 = new SaveData.Hint();
        hint3.soalId = this.soalId;
        hint3.chance = 1;
        hint3.hint = new int[0];
        currentSaveData.hints.add(hint3);
        return hint3;
    }

    private void updateSaveData() {
        y.u0(TGApplication.d(), KEY_EVENT_HINT, this.gson.t(this._saveData));
    }

    public void addChance(int i10) {
        getSavedDataHint().chance += i10;
        updateSaveData();
    }

    public void addHint() {
        SaveData.Hint savedDataHint = getSavedDataHint();
        int[] iArr = savedDataHint.hint;
        if (iArr.length >= getMaxHintLength()) {
            return;
        }
        int[] lockedHintPosition = getLockedHintPosition(iArr);
        int i10 = lockedHintPosition[new Random().nextInt(lockedHintPosition.length)];
        int[] iArrCopyOf = Arrays.copyOf(iArr, iArr.length + 1);
        iArrCopyOf[iArrCopyOf.length - 1] = i10;
        Arrays.sort(iArrCopyOf);
        savedDataHint.hint = iArrCopyOf;
        savedDataHint.chance = -1;
        savedDataHint.chance = Math.max(0, -1);
        updateSaveData();
    }

    public String currentHint() {
        int[] iArr = getSavedDataHint().hint;
        StringBuilder sb = new StringBuilder();
        for (int i10 = 0; i10 < this.answer.length(); i10++) {
            if (Arrays.binarySearch(iArr, i10) >= 0 || this.answer.charAt(i10) == ' ') {
                sb.append(this.answer.charAt(i10));
            } else {
                sb.append("_");
            }
            if (i10 != this.answer.length() - 1) {
                sb.append(" ");
            }
        }
        return sb.toString();
    }

    public boolean isAllHintAvailable() {
        return getSavedDataHint().hint.length == getMaxHintLength();
    }

    public boolean isHintChanceEmpty() {
        return getSavedDataHint().chance == 0;
    }

    public boolean isNoHintAvailable() {
        return getSavedDataHint().hint.length == 0;
    }
}
