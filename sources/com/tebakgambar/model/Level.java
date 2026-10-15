package com.tebakgambar.model;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.res.AssetManager;
import android.graphics.Color;
import android.text.TextUtils;
import com.google.gson.f;
import com.tebakgambar.R;
import com.tebakgambar.TGApplication;
import com.tebakgambar.database.TGDatabase;
import com.tebakgambar.model.response.ApiResponse2;
import com.vungle.mediation.BuildConfig;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import y8.h;
import y8.y;

/* JADX INFO: loaded from: classes.dex */
public class Level {
    private static final int CHECKPOINT = 10;
    private static final int CHECKPOINT_LEVEL_START = 11;
    private static final String PREF_NAME = "tg.level.pref";

    @b7.c("AchievementID")
    public String achievementId;

    @b7.c("BackgroundColor")
    public String backgroundColor;

    @b7.c("Color")
    public String color;

    @b7.c("ComingSoon")
    public ComingSoon comingSoon;

    @b7.c("FrameURL")
    public String frameUrl;

    @b7.c("IconURL")
    public String iconUrl;

    @b7.c("SoalRegulerID")
    public int id;
    public String indexSoal;

    @b7.c("Quotes")
    public String quotes;

    @b7.c("SliderID")
    public int sliderId;

    @b7.c("SoalRecehIDs")
    public int[] soalRecehIds;
    public boolean status;

    @b7.c("Subtitle")
    public String subtitle;

    @b7.c("Title")
    public String title;

    @b7.c("Version")
    public int version;

    @b7.c("ZipLevelURL")
    public String zipLevelUrl;

    public static void clearAll() {
        h.d();
    }

    public static Level fromGlobalIndex(int i10) {
        return fromId(getLevelIdByGlobalIndex(i10));
    }

    public static Level fromId(int i10) {
        return TGDatabase.C().E().c(i10);
    }

    public static List<Level> getAllLevels() {
        return TGDatabase.C().E().b();
    }

    public static List<Level> getDefaultLevels() {
        return ((ApiResponse2) new f().k(y.Y("default_level.json"), ApiResponse2.class)).data;
    }

    public static String getLevelFolderNameByGlobalIndex(int i10) {
        return "android-level-" + getLevelIdByGlobalIndex(i10);
    }

    public static int getLevelIdByGlobalIndex(int i10) {
        return (i10 / 20) + 1;
    }

    public String endLevelQuote() {
        return this.quotes + TGApplication.d().getString(R.string.postfix_tap_to_continue);
    }

    public void generateLevelIfNeeded(Context context) {
        if (y.G(context, this.id).equals(BuildConfig.FLAVOR)) {
            GameData gameDataD = m8.a.f().d();
            int i10 = this.id;
            y.q0(context, this.id, y.p((i10 - 1) * 20, ((i10 - 1) * 20) + 19, gameDataD.lastLevelStructure.level > i10));
        }
    }

    public int getBackgroundColor(Context context) {
        if (!TextUtils.isEmpty(this.backgroundColor)) {
            try {
                return Color.parseColor("#" + this.backgroundColor);
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
        return context.getResources().getColor(R.color.color_dark_green_1);
    }

    public int getColor() {
        if (TextUtils.isEmpty(this.color)) {
            return -1;
        }
        try {
            return Color.parseColor("#" + this.color);
        } catch (Exception e10) {
            e10.printStackTrace();
            return -1;
        }
    }

    public int getDefaultIconResource(Context context) {
        return context.getResources().getIdentifier(getIconResourceString(), null, context.getPackageName());
    }

    public int getFrameResource(Context context) {
        return context.getResources().getIdentifier(getFrameResourceString(), null, context.getPackageName());
    }

    public String getFrameResourceString() {
        return "drawable/level_" + this.id;
    }

    public String getIconResourceString() {
        return "drawable/ic_sigam_level_" + ((this.id % 10) + 1);
    }

    public String getLevelFolderName() {
        return "android-level-" + this.id;
    }

    public QuestionSavedData getNextQuestionSavedData(int i10) {
        boolean z10 = false;
        for (QuestionSavedData questionSavedData : getQuestionSavedData()) {
            if (questionSavedData.globalIndex == i10) {
                z10 = true;
            } else if (z10) {
                return questionSavedData;
            }
        }
        return null;
    }

    public List<QuestionSavedData> getQuestionSavedData() {
        String[] strArrSplit = y.G(TGApplication.d(), this.id).split("#");
        ArrayList arrayList = new ArrayList();
        int i10 = 0;
        while (i10 < strArrSplit.length) {
            String[] strArrSplit2 = strArrSplit[i10].split("-");
            QuestionSavedData questionSavedData = new QuestionSavedData();
            questionSavedData.globalIndex = Integer.valueOf(strArrSplit2[0]).intValue();
            int i11 = i10 + 1;
            questionSavedData.order = i11;
            questionSavedData.open = Boolean.valueOf(strArrSplit2[1]).booleanValue();
            questionSavedData.isBoss = i10 == strArrSplit.length - 1;
            questionSavedData.isReceh = isRecehQuestion(questionSavedData.globalIndex);
            if (questionSavedData.order == 11 && this.id >= 11) {
                ((QuestionSavedData) arrayList.get(i10 - 1)).isCheckPoint = true;
            }
            if (questionSavedData.open && i10 > 0) {
                ((QuestionSavedData) arrayList.get(i10 - 1)).solved = true;
            }
            arrayList.add(questionSavedData);
            i10 = i11;
        }
        return arrayList;
    }

    public String getTemporaryDownloadFileName() {
        return "android-level-" + this.id + ".zip";
    }

    public boolean hasSelfieLevel() {
        return this.id % 2 != 0;
    }

    public boolean isAvailable() {
        return isDefaultLevelAvailable() || isDownloadedLevelAvailable();
    }

    public boolean isDefaultLevelAvailable() {
        try {
            AssetManager assets = TGApplication.d().getAssets();
            StringBuilder sb = new StringBuilder();
            sb.append("level/");
            sb.append(getLevelFolderName());
            return assets.list(sb.toString()).length >= 20;
        } catch (IOException e10) {
            e10.printStackTrace();
            return false;
        }
    }

    public boolean isDownloadedLevelAvailable() {
        File fileM = h.m(TGApplication.d(), getLevelFolderName());
        return fileM.exists() && fileM.list().length >= 20;
    }

    public boolean isLocked() {
        return this.id > y.s(TGApplication.d());
    }

    public boolean isNew() {
        return y.X(TGApplication.d(), this.id);
    }

    public boolean isRecehQuestion(int i10) {
        int[] iArr = this.soalRecehIds;
        if (iArr != null) {
            for (int i11 : iArr) {
                if (i11 == i10) {
                    return true;
                }
            }
        }
        return false;
    }

    public boolean isSpecial() {
        return !TextUtils.isEmpty(this.subtitle);
    }

    public boolean isUpcomingLevel() {
        ComingSoon comingSoon = this.comingSoon;
        return comingSoon != null && comingSoon.releaseTimeStamp > System.currentTimeMillis();
    }

    public boolean isValidLocalNotification() {
        ComingSoon comingSoon = this.comingSoon;
        return comingSoon != null && comingSoon.isValidLocalNotification();
    }

    public void setSlideAlredyShown() {
        TGApplication.d().getSharedPreferences(PREF_NAME, 0).edit().putBoolean("slider-shown-" + this.id + "-" + this.sliderId, true).apply();
    }

    public boolean shouldShowSlider() {
        if (this.sliderId == 0) {
            return false;
        }
        SharedPreferences sharedPreferences = TGApplication.d().getSharedPreferences(PREF_NAME, 0);
        return !sharedPreferences.getBoolean("slider-shown-" + this.id + "-" + this.sliderId, false);
    }

    public QuestionSavedData getQuestionSavedData(int i10) {
        for (QuestionSavedData questionSavedData : getQuestionSavedData()) {
            if (questionSavedData.globalIndex == i10) {
                return questionSavedData;
            }
        }
        return null;
    }
}
