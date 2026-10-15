package com.android.volley.toolbox;

import com.android.volley.NetworkResponse;
import com.android.volley.ParseError;
import com.android.volley.Response;
import java.io.UnsupportedEncodingException;
import org.json.JSONArray;
import org.json.JSONException;

/* JADX INFO: loaded from: classes.dex */
public class JsonArrayRequest extends JsonRequest<JSONArray> {
    @Override // com.android.volley.Request
    protected Response<JSONArray> Y(NetworkResponse networkResponse) {
        try {
            return Response.c(new JSONArray(new String(networkResponse.f5095b, HttpHeaderParser.g(networkResponse.f5096c, "utf-8"))), HttpHeaderParser.e(networkResponse));
        } catch (UnsupportedEncodingException e10) {
            return Response.a(new ParseError(e10));
        } catch (JSONException e11) {
            return Response.a(new ParseError(e11));
        }
    }
}
