package com.facebook.login;

import com.facebook.AccessToken;
import com.facebook.AuthenticationToken;
import com.facebook.gamingservices.cloudgaming.internal.SDKConstants;
import java.util.Set;

/* JADX INFO: compiled from: LoginResult.kt */
/* JADX INFO: loaded from: classes.dex */
public final class LoginResult {
    private final AccessToken accessToken;
    private final AuthenticationToken authenticationToken;
    private final Set<String> recentlyDeniedPermissions;
    private final Set<String> recentlyGrantedPermissions;

    public LoginResult(AccessToken accessToken, AuthenticationToken authenticationToken, Set<String> set, Set<String> set2) {
        t9.m.e(accessToken, SDKConstants.PARAM_ACCESS_TOKEN);
        t9.m.e(set, "recentlyGrantedPermissions");
        t9.m.e(set2, "recentlyDeniedPermissions");
        this.accessToken = accessToken;
        this.authenticationToken = authenticationToken;
        this.recentlyGrantedPermissions = set;
        this.recentlyDeniedPermissions = set2;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public LoginResult(AccessToken accessToken, Set<String> set, Set<String> set2) {
        this(accessToken, null, set, set2, 2, null);
        t9.m.e(accessToken, SDKConstants.PARAM_ACCESS_TOKEN);
        t9.m.e(set, "recentlyGrantedPermissions");
        t9.m.e(set2, "recentlyDeniedPermissions");
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ LoginResult copy$default(LoginResult loginResult, AccessToken accessToken, AuthenticationToken authenticationToken, Set set, Set set2, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            accessToken = loginResult.accessToken;
        }
        if ((i10 & 2) != 0) {
            authenticationToken = loginResult.authenticationToken;
        }
        if ((i10 & 4) != 0) {
            set = loginResult.recentlyGrantedPermissions;
        }
        if ((i10 & 8) != 0) {
            set2 = loginResult.recentlyDeniedPermissions;
        }
        return loginResult.copy(accessToken, authenticationToken, set, set2);
    }

    public final AccessToken component1() {
        return this.accessToken;
    }

    public final AuthenticationToken component2() {
        return this.authenticationToken;
    }

    public final Set<String> component3() {
        return this.recentlyGrantedPermissions;
    }

    public final Set<String> component4() {
        return this.recentlyDeniedPermissions;
    }

    public final LoginResult copy(AccessToken accessToken, AuthenticationToken authenticationToken, Set<String> set, Set<String> set2) {
        t9.m.e(accessToken, SDKConstants.PARAM_ACCESS_TOKEN);
        t9.m.e(set, "recentlyGrantedPermissions");
        t9.m.e(set2, "recentlyDeniedPermissions");
        return new LoginResult(accessToken, authenticationToken, set, set2);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof LoginResult)) {
            return false;
        }
        LoginResult loginResult = (LoginResult) obj;
        return t9.m.a(this.accessToken, loginResult.accessToken) && t9.m.a(this.authenticationToken, loginResult.authenticationToken) && t9.m.a(this.recentlyGrantedPermissions, loginResult.recentlyGrantedPermissions) && t9.m.a(this.recentlyDeniedPermissions, loginResult.recentlyDeniedPermissions);
    }

    public final AccessToken getAccessToken() {
        return this.accessToken;
    }

    public final AuthenticationToken getAuthenticationToken() {
        return this.authenticationToken;
    }

    public final Set<String> getRecentlyDeniedPermissions() {
        return this.recentlyDeniedPermissions;
    }

    public final Set<String> getRecentlyGrantedPermissions() {
        return this.recentlyGrantedPermissions;
    }

    public int hashCode() {
        int iHashCode = this.accessToken.hashCode() * 31;
        AuthenticationToken authenticationToken = this.authenticationToken;
        return ((((iHashCode + (authenticationToken == null ? 0 : authenticationToken.hashCode())) * 31) + this.recentlyGrantedPermissions.hashCode()) * 31) + this.recentlyDeniedPermissions.hashCode();
    }

    public String toString() {
        return "LoginResult(accessToken=" + this.accessToken + ", authenticationToken=" + this.authenticationToken + ", recentlyGrantedPermissions=" + this.recentlyGrantedPermissions + ", recentlyDeniedPermissions=" + this.recentlyDeniedPermissions + ')';
    }

    public /* synthetic */ LoginResult(AccessToken accessToken, AuthenticationToken authenticationToken, Set set, Set set2, int i10, t9.g gVar) {
        this(accessToken, (i10 & 2) != 0 ? null : authenticationToken, set, set2);
    }
}
