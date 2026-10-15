package com.tebakgambar.model.response;

import b7.c;
import com.tebakgambar.model.CustomBanner;
import com.tebakgambar.model.UserData;

/* JADX INFO: loaded from: classes2.dex */
public class AuthResult {

    @c("custom_banner")
    public CustomBanner customBanner;

    @c("game_data")
    public String gameData;

    @c("sync_token")
    public String syncToken;

    @c("user_data")
    public UserData userData;
}
