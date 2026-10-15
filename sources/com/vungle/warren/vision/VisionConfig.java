package com.vungle.warren.vision;

import b7.c;
import com.facebook.devicerequests.internal.DeviceRequestsHelper;

/* JADX INFO: loaded from: classes2.dex */
public class VisionConfig {

    @c("aggregation_filters")
    public String[] aggregationFilters;

    @c("aggregation_time_windows")
    public int[] aggregationTimeWindows;

    @c("enabled")
    public boolean enabled;

    @c("view_limit")
    public Limits viewLimit;

    public static class Limits {

        @c(DeviceRequestsHelper.DEVICE_INFO_DEVICE)
        public int device;

        @c("mobile")
        public int mobile;

        @c("wifi")
        public int wifi;
    }
}
