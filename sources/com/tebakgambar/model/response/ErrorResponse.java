package com.tebakgambar.model.response;

import com.tebakgambar.R;
import com.tebakgambar.TGApplication;
import java.net.UnknownHostException;

/* JADX INFO: loaded from: classes2.dex */
public class ErrorResponse {
    public static final int REASON_HTTP_ERROR = -4;
    public static final int REASON_NO_INTERNET = -2;
    public static final int REASON_SERVER = -3;
    public static final int REASON_UNKNOWN = -1;
    public String message;
    public int reason;
    public int status;

    public ErrorResponse(Throwable th) {
        if (th instanceof UnknownHostException) {
            this.message = TGApplication.d().getString(R.string.error_no_internet_2);
            this.reason = -2;
        } else {
            this.message = TGApplication.d().getString(R.string.error_unknown);
            this.reason = -1;
        }
    }

    public ErrorResponse(int i10, String str) {
        this.reason = -4;
        this.message = str;
        if (i10 >= 500 && i10 <= 599) {
            this.message = TGApplication.d().getString(R.string.error_server_error);
        } else {
            if (i10 < 400 || i10 > 499) {
                return;
            }
            this.message = TGApplication.d().getString(R.string.error_unknown);
        }
    }

    public <T extends ApiResponse> ErrorResponse(T t10) {
        this.reason = -3;
        this.message = t10.message;
        this.status = t10.status;
    }
}
