package com.facebook.login;

import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.AccessToken;
import com.facebook.AccessTokenSource;
import com.facebook.gamingservices.cloudgaming.internal.SDKConstants;
import com.facebook.login.LoginClient;
import com.facebook.share.internal.ShareConstants;
import com.vungle.mediation.VungleExtrasBuilder;
import java.util.Collection;
import java.util.Date;
import java.util.concurrent.ScheduledThreadPoolExecutor;

/* JADX INFO: compiled from: DeviceAuthMethodHandler.kt */
/* JADX INFO: loaded from: classes.dex */
public class DeviceAuthMethodHandler extends LoginMethodHandler {
    private static ScheduledThreadPoolExecutor backgroundExecutor;
    private final String nameForLogging;
    public static final Companion Companion = new Companion(null);
    public static final Parcelable.Creator<DeviceAuthMethodHandler> CREATOR = new Parcelable.Creator<DeviceAuthMethodHandler>() { // from class: com.facebook.login.DeviceAuthMethodHandler$Companion$CREATOR$1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public DeviceAuthMethodHandler createFromParcel(Parcel parcel) {
            t9.m.e(parcel, ShareConstants.FEED_SOURCE_PARAM);
            return new DeviceAuthMethodHandler(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public DeviceAuthMethodHandler[] newArray(int i10) {
            return new DeviceAuthMethodHandler[i10];
        }
    };

    /* JADX INFO: compiled from: DeviceAuthMethodHandler.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(t9.g gVar) {
            this();
        }

        public final synchronized ScheduledThreadPoolExecutor getBackgroundExecutor() {
            ScheduledThreadPoolExecutor scheduledThreadPoolExecutor;
            if (DeviceAuthMethodHandler.backgroundExecutor == null) {
                DeviceAuthMethodHandler.backgroundExecutor = new ScheduledThreadPoolExecutor(1);
            }
            scheduledThreadPoolExecutor = DeviceAuthMethodHandler.backgroundExecutor;
            if (scheduledThreadPoolExecutor == null) {
                t9.m.p("backgroundExecutor");
                throw null;
            }
            return scheduledThreadPoolExecutor;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DeviceAuthMethodHandler(LoginClient loginClient) {
        super(loginClient);
        t9.m.e(loginClient, "loginClient");
        this.nameForLogging = "device_auth";
    }

    public static final synchronized ScheduledThreadPoolExecutor getBackgroundExecutor() {
        return Companion.getBackgroundExecutor();
    }

    private final void showDialog(LoginClient.Request request) {
        androidx.fragment.app.e activity = getLoginClient().getActivity();
        if (activity == null || activity.isFinishing()) {
            return;
        }
        DeviceAuthDialog deviceAuthDialogCreateDeviceAuthDialog = createDeviceAuthDialog();
        deviceAuthDialogCreateDeviceAuthDialog.show(activity.getSupportFragmentManager(), "login_with_facebook");
        deviceAuthDialogCreateDeviceAuthDialog.startLogin(request);
    }

    protected DeviceAuthDialog createDeviceAuthDialog() {
        return new DeviceAuthDialog();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // com.facebook.login.LoginMethodHandler
    public String getNameForLogging() {
        return this.nameForLogging;
    }

    public void onCancel() {
        getLoginClient().completeAndValidate(LoginClient.Result.Companion.createCancelResult(getLoginClient().getPendingRequest(), LoginMethodHandler.USER_CANCELED_LOG_IN_ERROR_MESSAGE));
    }

    public void onError(Exception exc) {
        t9.m.e(exc, "ex");
        getLoginClient().completeAndValidate(LoginClient.Result.Companion.createErrorResult$default(LoginClient.Result.Companion, getLoginClient().getPendingRequest(), null, exc.getMessage(), null, 8, null));
    }

    public void onSuccess(String str, String str2, String str3, Collection<String> collection, Collection<String> collection2, Collection<String> collection3, AccessTokenSource accessTokenSource, Date date, Date date2, Date date3) {
        t9.m.e(str, SDKConstants.PARAM_ACCESS_TOKEN);
        t9.m.e(str2, "applicationId");
        t9.m.e(str3, VungleExtrasBuilder.EXTRA_USER_ID);
        getLoginClient().completeAndValidate(LoginClient.Result.Companion.createTokenResult(getLoginClient().getPendingRequest(), new AccessToken(str, str2, str3, collection, collection2, collection3, accessTokenSource, date, date2, date3, null, 1024, null)));
    }

    @Override // com.facebook.login.LoginMethodHandler
    public int tryAuthorize(LoginClient.Request request) {
        t9.m.e(request, "request");
        showDialog(request);
        return 1;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    protected DeviceAuthMethodHandler(Parcel parcel) {
        super(parcel);
        t9.m.e(parcel, "parcel");
        this.nameForLogging = "device_auth";
    }
}
