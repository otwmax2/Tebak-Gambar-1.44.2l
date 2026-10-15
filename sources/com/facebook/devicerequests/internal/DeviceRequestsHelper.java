package com.facebook.devicerequests.internal;

import android.annotation.TargetApi;
import android.graphics.Bitmap;
import android.net.nsd.NsdManager;
import android.net.nsd.NsdServiceInfo;
import android.os.Build;
import ba.p;
import com.facebook.FacebookSdk;
import com.facebook.internal.FetchedAppSettings;
import com.facebook.internal.FetchedAppSettingsManager;
import com.facebook.internal.SmartLoginOption;
import com.facebook.internal.Utility;
import com.facebook.internal.instrument.crashshield.CrashShieldHandler;
import i7.a;
import i7.c;
import i7.e;
import i7.h;
import java.util.EnumMap;
import java.util.HashMap;
import java.util.Map;
import l7.b;
import org.json.JSONObject;
import t9.m;

/* JADX INFO: compiled from: DeviceRequestsHelper.kt */
/* JADX INFO: loaded from: classes.dex */
public final class DeviceRequestsHelper {
    public static final String DEVICE_INFO_DEVICE = "device";
    public static final String DEVICE_INFO_MODEL = "model";
    public static final String DEVICE_INFO_PARAM = "device_info";
    public static final String DEVICE_TARGET_USER_ID = "target_user_id";
    public static final String SDK_FLAVOR = "android";
    public static final String SDK_HEADER = "fbsdk";
    public static final String SERVICE_TYPE = "_fb._tcp.";
    public static final DeviceRequestsHelper INSTANCE = new DeviceRequestsHelper();
    private static final String TAG = DeviceRequestsHelper.class.getCanonicalName();
    private static final HashMap<String, NsdManager.RegistrationListener> deviceRequestsListeners = new HashMap<>();

    private DeviceRequestsHelper() {
    }

    public static final void cleanUpAdvertisementService(String str) {
        if (CrashShieldHandler.isObjectCrashing(DeviceRequestsHelper.class)) {
            return;
        }
        try {
            INSTANCE.cleanUpAdvertisementServiceImpl(str);
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, DeviceRequestsHelper.class);
        }
    }

    @TargetApi(16)
    private final void cleanUpAdvertisementServiceImpl(String str) {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return;
        }
        try {
            NsdManager.RegistrationListener registrationListener = deviceRequestsListeners.get(str);
            if (registrationListener != null) {
                FacebookSdk facebookSdk = FacebookSdk.INSTANCE;
                Object systemService = FacebookSdk.getApplicationContext().getSystemService("servicediscovery");
                if (systemService == null) {
                    throw new NullPointerException("null cannot be cast to non-null type android.net.nsd.NsdManager");
                }
                try {
                    ((NsdManager) systemService).unregisterService(registrationListener);
                } catch (IllegalArgumentException e10) {
                    Utility utility = Utility.INSTANCE;
                    Utility.logd(TAG, e10);
                }
                deviceRequestsListeners.remove(str);
            }
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
        }
    }

    public static final Bitmap generateQRCode(String str) {
        Bitmap bitmap = null;
        if (CrashShieldHandler.isObjectCrashing(DeviceRequestsHelper.class)) {
            return null;
        }
        try {
            EnumMap enumMap = new EnumMap(c.class);
            enumMap.put(c.MARGIN, 2);
            try {
                b bVarA = new e().a(str, a.QR_CODE, 200, 200, enumMap);
                int iG = bVarA.g();
                int iH = bVarA.h();
                int[] iArr = new int[iG * iH];
                if (iG > 0) {
                    int i10 = 0;
                    while (true) {
                        int i11 = i10 + 1;
                        int i12 = i10 * iH;
                        if (iH > 0) {
                            int i13 = 0;
                            while (true) {
                                int i14 = i13 + 1;
                                iArr[i12 + i13] = bVarA.f(i13, i10) ? -16777216 : -1;
                                if (i14 >= iH) {
                                    break;
                                }
                                i13 = i14;
                            }
                        }
                        if (i11 >= iG) {
                            break;
                        }
                        i10 = i11;
                    }
                }
                Bitmap bitmapCreateBitmap = Bitmap.createBitmap(iH, iG, Bitmap.Config.ARGB_8888);
                try {
                    bitmapCreateBitmap.setPixels(iArr, 0, iH, 0, 0, iH, iG);
                    return bitmapCreateBitmap;
                } catch (h unused) {
                    bitmap = bitmapCreateBitmap;
                    return bitmap;
                }
            } catch (h unused2) {
            }
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, DeviceRequestsHelper.class);
            return null;
        }
    }

    public static final String getDeviceInfo(Map<String, String> map) {
        if (CrashShieldHandler.isObjectCrashing(DeviceRequestsHelper.class)) {
            return null;
        }
        if (map == null) {
            try {
                map = new HashMap<>();
            } catch (Throwable th) {
                CrashShieldHandler.handleThrowable(th, DeviceRequestsHelper.class);
                return null;
            }
        }
        String str = Build.DEVICE;
        m.d(str, "DEVICE");
        map.put(DEVICE_INFO_DEVICE, str);
        String str2 = Build.MODEL;
        m.d(str2, "MODEL");
        map.put(DEVICE_INFO_MODEL, str2);
        String string = new JSONObject(map).toString();
        m.d(string, "JSONObject(deviceInfo as Map<*, *>).toString()");
        return string;
    }

    public static final boolean isAvailable() {
        if (CrashShieldHandler.isObjectCrashing(DeviceRequestsHelper.class)) {
            return false;
        }
        try {
            FetchedAppSettingsManager fetchedAppSettingsManager = FetchedAppSettingsManager.INSTANCE;
            FacebookSdk facebookSdk = FacebookSdk.INSTANCE;
            FetchedAppSettings appSettingsWithoutQuery = FetchedAppSettingsManager.getAppSettingsWithoutQuery(FacebookSdk.getApplicationId());
            if (Build.VERSION.SDK_INT < 16 || appSettingsWithoutQuery == null) {
                return false;
            }
            return appSettingsWithoutQuery.getSmartLoginOptions().contains(SmartLoginOption.Enabled);
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, DeviceRequestsHelper.class);
            return false;
        }
    }

    public static final boolean startAdvertisementService(String str) {
        if (CrashShieldHandler.isObjectCrashing(DeviceRequestsHelper.class)) {
            return false;
        }
        try {
            DeviceRequestsHelper deviceRequestsHelper = INSTANCE;
            if (isAvailable()) {
                return deviceRequestsHelper.startAdvertisementServiceImpl(str);
            }
            return false;
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, DeviceRequestsHelper.class);
            return false;
        }
    }

    @TargetApi(16)
    private final boolean startAdvertisementServiceImpl(final String str) {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return false;
        }
        try {
            HashMap<String, NsdManager.RegistrationListener> map = deviceRequestsListeners;
            if (map.containsKey(str)) {
                return true;
            }
            FacebookSdk facebookSdk = FacebookSdk.INSTANCE;
            final String str2 = "fbsdk_" + m.k("android-", p.r(FacebookSdk.getSdkVersion(), '.', '|', false, 4, null)) + '_' + ((Object) str);
            NsdServiceInfo nsdServiceInfo = new NsdServiceInfo();
            nsdServiceInfo.setServiceType(SERVICE_TYPE);
            nsdServiceInfo.setServiceName(str2);
            nsdServiceInfo.setPort(80);
            Object systemService = FacebookSdk.getApplicationContext().getSystemService("servicediscovery");
            if (systemService == null) {
                throw new NullPointerException("null cannot be cast to non-null type android.net.nsd.NsdManager");
            }
            NsdManager.RegistrationListener registrationListener = new NsdManager.RegistrationListener() { // from class: com.facebook.devicerequests.internal.DeviceRequestsHelper$startAdvertisementServiceImpl$nsdRegistrationListener$1
                @Override // android.net.nsd.NsdManager.RegistrationListener
                public void onRegistrationFailed(NsdServiceInfo nsdServiceInfo2, int i10) {
                    m.e(nsdServiceInfo2, "serviceInfo");
                    DeviceRequestsHelper deviceRequestsHelper = DeviceRequestsHelper.INSTANCE;
                    DeviceRequestsHelper.cleanUpAdvertisementService(str);
                }

                @Override // android.net.nsd.NsdManager.RegistrationListener
                public void onServiceRegistered(NsdServiceInfo nsdServiceInfo2) {
                    m.e(nsdServiceInfo2, "NsdServiceInfo");
                    if (m.a(str2, nsdServiceInfo2.getServiceName())) {
                        return;
                    }
                    DeviceRequestsHelper deviceRequestsHelper = DeviceRequestsHelper.INSTANCE;
                    DeviceRequestsHelper.cleanUpAdvertisementService(str);
                }

                @Override // android.net.nsd.NsdManager.RegistrationListener
                public void onServiceUnregistered(NsdServiceInfo nsdServiceInfo2) {
                    m.e(nsdServiceInfo2, "serviceInfo");
                }

                @Override // android.net.nsd.NsdManager.RegistrationListener
                public void onUnregistrationFailed(NsdServiceInfo nsdServiceInfo2, int i10) {
                    m.e(nsdServiceInfo2, "serviceInfo");
                }
            };
            map.put(str, registrationListener);
            ((NsdManager) systemService).registerService(nsdServiceInfo, 1, registrationListener);
            return true;
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
            return false;
        }
    }

    public static final String getDeviceInfo() {
        if (CrashShieldHandler.isObjectCrashing(DeviceRequestsHelper.class)) {
            return null;
        }
        try {
            return getDeviceInfo(null);
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, DeviceRequestsHelper.class);
            return null;
        }
    }
}
