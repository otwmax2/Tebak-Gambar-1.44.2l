package com.tebakgambar.model;

import android.content.SharedPreferences;
import com.facebook.appevents.AppEventsConstants;
import com.google.gson.f;
import com.tebakgambar.TGApplication;
import com.tebakgambar.model.response.AuthResult;
import java.util.HashSet;
import java.util.Set;
import y8.y;

/* JADX INFO: loaded from: classes2.dex */
public class LocalUserData {
    private static final String PREF_NAME = "tebakgambar_localuserdata";
    private static LocalUserData sInstance;
    private boolean isPending;
    private Set<String> loginTypes;
    private String pendingGameData;
    private SharedPreferences sharedPreferences = TGApplication.d().getSharedPreferences(PREF_NAME, 0);
    private String syncToken;
    private UserData userData;
    private static final String KEY_SYNC_TOKEN = LocalUserData.class.getName() + "_sync_token";
    private static final String KEY_IS_PENDING = LocalUserData.class.getName() + "_is_pending";
    private static final String KEY_USER_DATA = LocalUserData.class.getName() + "_user_data";
    private static final String KEY_LOGIN_TYPE = LocalUserData.class.getName() + "_login_type";

    private LocalUserData() {
        invalidate();
    }

    public static LocalUserData getInstance() {
        if (sInstance == null) {
            sInstance = new LocalUserData();
        }
        return sInstance;
    }

    public static String getLoginSocialType(String str) {
        return LoginConfig.VIA_LINE.equals(str) ? "3" : "email".equals(str) ? AppEventsConstants.EVENT_PARAM_VALUE_NO : "facebook".equals(str) ? AppEventsConstants.EVENT_PARAM_VALUE_YES : "-1";
    }

    public static String getLoginType(int i10) {
        if (i10 == 3) {
            return LoginConfig.VIA_LINE;
        }
        if (i10 == 1) {
            return "facebook";
        }
        if (i10 == 0) {
            return "email";
        }
        return null;
    }

    public void addLoginType(String str) {
        this.loginTypes.add(str);
        this.sharedPreferences.edit().putStringSet(KEY_LOGIN_TYPE, this.loginTypes).commit();
    }

    public void clearLoginData() throws Throwable {
        this.sharedPreferences.edit().remove(KEY_SYNC_TOKEN).remove(KEY_USER_DATA).remove(KEY_IS_PENDING).remove(KEY_LOGIN_TYPE).commit();
        this.isPending = false;
        this.syncToken = null;
        this.userData = null;
        this.loginTypes = new HashSet();
        m8.a.f().r();
        invalidateFabric();
    }

    public void clearOldLoginData() {
        this.sharedPreferences.edit().remove(KEY_SYNC_TOKEN).remove(KEY_USER_DATA).remove(KEY_IS_PENDING).remove(KEY_LOGIN_TYPE).commit();
        this.isPending = false;
        this.syncToken = null;
        this.userData = null;
        this.loginTypes = new HashSet();
    }

    public String getId() {
        return y.g(this.syncToken, "d78034b1630c3659076765d354111c3a1f5410372d14b5539234411a3e74b86b7b76d93cc").split("#")[0];
    }

    public Set<String> getLoginTypes() {
        return isLoggedIn() ? this.loginTypes : new HashSet();
    }

    public String getSyncToken() {
        return this.syncToken;
    }

    public UserData getUserData() {
        return this.userData;
    }

    public void invalidate() {
        SharedPreferences sharedPreferences = TGApplication.d().getSharedPreferences(PREF_NAME, 0);
        this.isPending = sharedPreferences.getBoolean(KEY_IS_PENDING, false);
        this.syncToken = sharedPreferences.getString(KEY_SYNC_TOKEN, null);
        this.loginTypes = sharedPreferences.getStringSet(KEY_LOGIN_TYPE, new HashSet());
        this.userData = (UserData) new f().k(sharedPreferences.getString(KEY_USER_DATA, null), UserData.class);
        invalidateFabric();
    }

    public void invalidateFabric() {
        UserData userData = this.userData;
        String str = userData != null ? userData.fullname : null;
        com.google.firebase.crashlytics.a.a().g(this.syncToken);
        com.google.firebase.crashlytics.a.a().f("full_name", str);
        com.google.firebase.crashlytics.a.a().f("sync_token", this.syncToken);
    }

    public boolean isLoggedIn() {
        return (this.syncToken == null || this.isPending) ? false : true;
    }

    public boolean isPending() {
        return this.isPending;
    }

    public void setLoginData(AuthResult authResult, String str, boolean z10) throws Throwable {
        if (z10) {
            this.pendingGameData = authResult.gameData;
        } else {
            String str2 = authResult.gameData;
            if (str2 != null) {
                m8.a.f().s(new GameData(str2));
            } else {
                m8.a.f().t();
            }
        }
        this.syncToken = authResult.syncToken;
        this.userData = authResult.userData;
        this.isPending = z10;
        HashSet hashSet = new HashSet();
        this.loginTypes = hashSet;
        hashSet.add(str);
        this.sharedPreferences.edit().putString(KEY_USER_DATA, new f().t(authResult.userData).toString()).putBoolean(KEY_IS_PENDING, z10).putString(KEY_SYNC_TOKEN, this.syncToken).putStringSet(KEY_LOGIN_TYPE, this.loginTypes).commit();
        invalidateFabric();
    }

    public void setPending(boolean z10) throws Throwable {
        String str;
        if (!z10 && (str = this.pendingGameData) != null) {
            if (str != null) {
                m8.a.f().s(new GameData(str));
                this.pendingGameData = null;
            } else {
                m8.a.f().t();
            }
        }
        this.isPending = z10;
        this.sharedPreferences.edit().putBoolean(KEY_IS_PENDING, this.isPending).commit();
    }

    public void setUserData(UserData userData) {
        this.userData = userData;
        this.sharedPreferences.edit().putString(KEY_USER_DATA, new f().t(userData).toString()).commit();
        invalidateFabric();
    }

    public void setLoginData(AuthResult authResult, String str) throws Throwable {
        setLoginData(authResult, str, false);
    }
}
