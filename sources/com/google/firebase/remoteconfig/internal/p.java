package com.google.firebase.remoteconfig.internal;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.XmlResourceParser;
import android.util.Log;
import com.facebook.gamingservices.cloudgaming.internal.SDKConstants;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: compiled from: DefaultsXmlParser.java */
/* JADX INFO: loaded from: classes2.dex */
public class p {
    public static Map<String, String> a(Context context, int i10) {
        Resources resources;
        HashMap map = new HashMap();
        try {
            resources = context.getResources();
        } catch (IOException | XmlPullParserException e10) {
            Log.e("FirebaseRemoteConfig", "Encountered an error while parsing the defaults XML file.", e10);
        }
        if (resources == null) {
            Log.e("FirebaseRemoteConfig", "Could not find the resources of the current context while trying to set defaults from an XML.");
            return map;
        }
        XmlResourceParser xml = resources.getXml(i10);
        String name = null;
        String text = null;
        String text2 = null;
        for (int eventType = xml.getEventType(); eventType != 1; eventType = xml.next()) {
            if (eventType == 2) {
                name = xml.getName();
            } else if (eventType == 3) {
                if (xml.getName().equals("entry")) {
                    if (text == null || text2 == null) {
                        Log.w("FirebaseRemoteConfig", "An entry in the defaults XML has an invalid key and/or value tag.");
                    } else {
                        map.put(text, text2);
                    }
                    text = null;
                    text2 = null;
                }
                name = null;
            } else if (eventType == 4 && name != null) {
                byte b10 = -1;
                int iHashCode = name.hashCode();
                if (iHashCode != 106079) {
                    if (iHashCode == 111972721 && name.equals(SDKConstants.PARAM_VALUE)) {
                        b10 = 1;
                    }
                } else if (name.equals(SDKConstants.PARAM_KEY)) {
                    b10 = 0;
                }
                if (b10 == 0) {
                    text = xml.getText();
                } else if (b10 != 1) {
                    Log.w("FirebaseRemoteConfig", "Encountered an unexpected tag while parsing the defaults XML.");
                } else {
                    text2 = xml.getText();
                }
            }
        }
        return map;
    }
}
