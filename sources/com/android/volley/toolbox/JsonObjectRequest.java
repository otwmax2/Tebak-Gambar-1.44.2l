package com.android.volley.toolbox;

import com.android.volley.NetworkResponse;
import com.android.volley.ParseError;
import com.android.volley.Response;
import java.io.UnsupportedEncodingException;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class JsonObjectRequest extends JsonRequest<JSONObject> {
    @Override // com.android.volley.Request
    protected Response<JSONObject> Y(NetworkResponse networkResponse) {
        try {
            return Response.c(new JSONObject(new String(networkResponse.f5095b, HttpHeaderParser.g(networkResponse.f5096c, "utf-8"))), HttpHeaderParser.e(networkResponse));
        } catch (UnsupportedEncodingException e10) {
            return Response.a(new ParseError(e10));
        } catch (JSONException e11) {
            return Response.a(new ParseError(e11));
        }
    }
}
