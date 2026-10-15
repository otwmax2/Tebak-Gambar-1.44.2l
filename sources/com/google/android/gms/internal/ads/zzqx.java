package com.google.android.gms.internal.ads;

import android.graphics.Point;
import android.media.MediaCodecInfo;
import android.util.Pair;
import com.facebook.internal.Utility;
import java.util.Objects;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzqx {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f20512a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f20513b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f20514c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final MediaCodecInfo.CodecCapabilities f20515d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f20516e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final boolean f20517f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final boolean f20518g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final boolean f20519h;

    zzqx(String str, String str2, String str3, MediaCodecInfo.CodecCapabilities codecCapabilities, boolean z10, boolean z11, boolean z12, boolean z13, boolean z14, boolean z15) {
        Objects.requireNonNull(str);
        this.f20512a = str;
        this.f20513b = str2;
        this.f20514c = str3;
        this.f20515d = codecCapabilities;
        this.f20518g = z10;
        this.f20516e = z13;
        this.f20517f = z15;
        this.f20519h = zzbt.h(str2);
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x003b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static com.google.android.gms.internal.ads.zzqx c(java.lang.String r12, java.lang.String r13, java.lang.String r14, android.media.MediaCodecInfo.CodecCapabilities r15, boolean r16, boolean r17, boolean r18, boolean r19, boolean r20) {
        /*
            r1 = r12
            r4 = r15
            com.google.android.gms.internal.ads.zzqx r11 = new com.google.android.gms.internal.ads.zzqx
            r0 = 1
            r2 = 0
            if (r4 == 0) goto L3b
            int r3 = com.google.android.gms.internal.ads.zzew.f17494a
            java.lang.String r5 = "adaptive-playback"
            boolean r5 = r15.isFeatureSupported(r5)
            if (r5 == 0) goto L3b
            r5 = 22
            if (r3 > r5) goto L39
            java.lang.String r3 = com.google.android.gms.internal.ads.zzew.f17497d
            java.lang.String r5 = "ODROID-XU3"
            boolean r5 = r5.equals(r3)
            if (r5 != 0) goto L28
            java.lang.String r5 = "Nexus 10"
            boolean r3 = r5.equals(r3)
            if (r3 == 0) goto L39
        L28:
            java.lang.String r3 = "OMX.Exynos.AVC.Decoder"
            boolean r3 = r3.equals(r12)
            if (r3 != 0) goto L3b
            java.lang.String r3 = "OMX.Exynos.AVC.Decoder.secure"
            boolean r3 = r3.equals(r12)
            if (r3 == 0) goto L39
            goto L3b
        L39:
            r8 = 1
            goto L3c
        L3b:
            r8 = 0
        L3c:
            r3 = 21
            if (r4 == 0) goto L4e
            int r5 = com.google.android.gms.internal.ads.zzew.f17494a
            if (r5 < r3) goto L4e
            java.lang.String r5 = "tunneled-playback"
            boolean r5 = r15.isFeatureSupported(r5)
            if (r5 == 0) goto L4e
            r9 = 1
            goto L4f
        L4e:
            r9 = 0
        L4f:
            if (r20 != 0) goto L62
            if (r4 == 0) goto L60
            int r5 = com.google.android.gms.internal.ads.zzew.f17494a
            if (r5 < r3) goto L60
            java.lang.String r3 = "secure-playback"
            boolean r3 = r15.isFeatureSupported(r3)
            if (r3 == 0) goto L60
            goto L62
        L60:
            r10 = 0
            goto L63
        L62:
            r10 = 1
        L63:
            r0 = r11
            r1 = r12
            r2 = r13
            r3 = r14
            r4 = r15
            r5 = r16
            r6 = r17
            r7 = r18
            r0.<init>(r1, r2, r3, r4, r5, r6, r7, r8, r9, r10)
            return r11
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzqx.c(java.lang.String, java.lang.String, java.lang.String, android.media.MediaCodecInfo$CodecCapabilities, boolean, boolean, boolean, boolean, boolean):com.google.android.gms.internal.ads.zzqx");
    }

    private static Point i(MediaCodecInfo.VideoCapabilities videoCapabilities, int i10, int i11) {
        int widthAlignment = videoCapabilities.getWidthAlignment();
        int heightAlignment = videoCapabilities.getHeightAlignment();
        return new Point(zzew.P(i10, widthAlignment) * widthAlignment, zzew.P(i11, heightAlignment) * heightAlignment);
    }

    private final void j(String str) {
        zzee.a("MediaCodecInfo", "NoSupport [" + str + "] [" + this.f20512a + ", " + this.f20513b + "] [" + zzew.f17498e + "]");
    }

    private static boolean k(MediaCodecInfo.VideoCapabilities videoCapabilities, int i10, int i11, double d10) {
        Point pointI = i(videoCapabilities, i10, i11);
        int i12 = pointI.x;
        int i13 = pointI.y;
        return (d10 == -1.0d || d10 < 1.0d) ? videoCapabilities.isSizeSupported(i12, i13) : videoCapabilities.areSizeAndRateSupported(i12, i13, Math.floor(d10));
    }

    private final boolean l(zzaf zzafVar, boolean z10) {
        MediaCodecInfo.VideoCapabilities videoCapabilities;
        Pair pairB = zzrp.b(zzafVar);
        if (pairB == null) {
            return true;
        }
        int iIntValue = ((Integer) pairB.first).intValue();
        int iIntValue2 = ((Integer) pairB.second).intValue();
        int i10 = 8;
        if ("video/dolby-vision".equals(zzafVar.f8731l)) {
            if ("video/avc".equals(this.f20513b)) {
                iIntValue2 = 0;
                iIntValue = 8;
            } else if ("video/hevc".equals(this.f20513b)) {
                iIntValue2 = 0;
                iIntValue = 2;
            }
        }
        if (!this.f20519h && iIntValue != 42) {
            return true;
        }
        MediaCodecInfo.CodecProfileLevel[] codecProfileLevelArrH = h();
        if (zzew.f17494a <= 23 && "video/x-vnd.on2.vp9".equals(this.f20513b) && codecProfileLevelArrH.length == 0) {
            MediaCodecInfo.CodecCapabilities codecCapabilities = this.f20515d;
            int iIntValue3 = (codecCapabilities == null || (videoCapabilities = codecCapabilities.getVideoCapabilities()) == null) ? 0 : ((Integer) videoCapabilities.getBitrateRange().getUpper()).intValue();
            if (iIntValue3 >= 180000000) {
                i10 = 1024;
            } else if (iIntValue3 >= 120000000) {
                i10 = 512;
            } else if (iIntValue3 >= 60000000) {
                i10 = 256;
            } else if (iIntValue3 >= 30000000) {
                i10 = 128;
            } else if (iIntValue3 >= 18000000) {
                i10 = 64;
            } else if (iIntValue3 >= 12000000) {
                i10 = 32;
            } else if (iIntValue3 >= 7200000) {
                i10 = 16;
            } else if (iIntValue3 < 3600000) {
                i10 = iIntValue3 >= 1800000 ? 4 : iIntValue3 >= 800000 ? 2 : 1;
            }
            MediaCodecInfo.CodecProfileLevel codecProfileLevel = new MediaCodecInfo.CodecProfileLevel();
            codecProfileLevel.profile = 1;
            codecProfileLevel.level = i10;
            codecProfileLevelArrH = new MediaCodecInfo.CodecProfileLevel[]{codecProfileLevel};
        }
        for (MediaCodecInfo.CodecProfileLevel codecProfileLevel2 : codecProfileLevelArrH) {
            if (codecProfileLevel2.profile == iIntValue && (codecProfileLevel2.level >= iIntValue2 || !z10)) {
                if ("video/hevc".equals(this.f20513b) && iIntValue == 2) {
                    String str = zzew.f17495b;
                    if ("sailfish".equals(str) || "marlin".equals(str)) {
                    }
                }
                return true;
            }
        }
        j("codec.profileLevel, " + zzafVar.f8728i + ", " + this.f20514c);
        return false;
    }

    private final boolean m(zzaf zzafVar) {
        return this.f20513b.equals(zzafVar.f8731l) || this.f20513b.equals(zzrp.e(zzafVar));
    }

    public final Point a(int i10, int i11) {
        MediaCodecInfo.VideoCapabilities videoCapabilities;
        MediaCodecInfo.CodecCapabilities codecCapabilities = this.f20515d;
        if (codecCapabilities == null || (videoCapabilities = codecCapabilities.getVideoCapabilities()) == null) {
            return null;
        }
        return i(videoCapabilities, i10, i11);
    }

    public final zzhc b(zzaf zzafVar, zzaf zzafVar2) {
        int i10 = true != zzew.u(zzafVar.f8731l, zzafVar2.f8731l) ? 8 : 0;
        if (this.f20519h) {
            if (zzafVar.f8739t != zzafVar2.f8739t) {
                i10 |= 1024;
            }
            if (!this.f20516e && (zzafVar.f8736q != zzafVar2.f8736q || zzafVar.f8737r != zzafVar2.f8737r)) {
                i10 |= 512;
            }
            if (!zzew.u(zzafVar.f8743x, zzafVar2.f8743x)) {
                i10 |= 2048;
            }
            String str = this.f20512a;
            if (zzew.f17497d.startsWith("SM-T230") && "OMX.MARVELL.VIDEO.HW.CODA7542DECODER".equals(str) && !zzafVar.e(zzafVar2)) {
                i10 |= 2;
            }
            if (i10 == 0) {
                return new zzhc(this.f20512a, zzafVar, zzafVar2, true != zzafVar.e(zzafVar2) ? 2 : 3, 0);
            }
        } else {
            if (zzafVar.f8744y != zzafVar2.f8744y) {
                i10 |= 4096;
            }
            if (zzafVar.f8745z != zzafVar2.f8745z) {
                i10 |= Utility.DEFAULT_STREAM_BUFFER_SIZE;
            }
            if (zzafVar.A != zzafVar2.A) {
                i10 |= 16384;
            }
            if (i10 == 0 && "audio/mp4a-latm".equals(this.f20513b)) {
                Pair pairB = zzrp.b(zzafVar);
                Pair pairB2 = zzrp.b(zzafVar2);
                if (pairB != null && pairB2 != null) {
                    int iIntValue = ((Integer) pairB.first).intValue();
                    int iIntValue2 = ((Integer) pairB2.first).intValue();
                    if (iIntValue == 42 && iIntValue2 == 42) {
                        return new zzhc(this.f20512a, zzafVar, zzafVar2, 3, 0);
                    }
                }
            }
            if (!zzafVar.e(zzafVar2)) {
                i10 |= 32;
            }
            if ("audio/opus".equals(this.f20513b)) {
                i10 |= 2;
            }
            if (i10 == 0) {
                return new zzhc(this.f20512a, zzafVar, zzafVar2, 1, 0);
            }
        }
        return new zzhc(this.f20512a, zzafVar, zzafVar2, 0, i10);
    }

    public final boolean d(zzaf zzafVar) {
        return m(zzafVar) && l(zzafVar, false);
    }

    public final boolean e(zzaf zzafVar) throws zzrj {
        int i10;
        if (!m(zzafVar) || !l(zzafVar, true)) {
            return false;
        }
        if (this.f20519h) {
            int i11 = zzafVar.f8736q;
            if (i11 <= 0 || (i10 = zzafVar.f8737r) <= 0) {
                return true;
            }
            if (zzew.f17494a >= 21) {
                return g(i11, i10, zzafVar.f8738s);
            }
            boolean z10 = i11 * i10 <= zzrp.a();
            if (!z10) {
                j("legacyFrameSize, " + zzafVar.f8736q + "x" + zzafVar.f8737r);
            }
            return z10;
        }
        int i12 = zzew.f17494a;
        if (i12 >= 21) {
            int i13 = zzafVar.f8745z;
            if (i13 != -1) {
                MediaCodecInfo.CodecCapabilities codecCapabilities = this.f20515d;
                if (codecCapabilities == null) {
                    j("sampleRate.caps");
                    return false;
                }
                MediaCodecInfo.AudioCapabilities audioCapabilities = codecCapabilities.getAudioCapabilities();
                if (audioCapabilities == null) {
                    j("sampleRate.aCaps");
                    return false;
                }
                if (!audioCapabilities.isSampleRateSupported(i13)) {
                    j("sampleRate.support, " + i13);
                    return false;
                }
            }
            int i14 = zzafVar.f8744y;
            if (i14 != -1) {
                MediaCodecInfo.CodecCapabilities codecCapabilities2 = this.f20515d;
                if (codecCapabilities2 == null) {
                    j("channelCount.caps");
                } else {
                    MediaCodecInfo.AudioCapabilities audioCapabilities2 = codecCapabilities2.getAudioCapabilities();
                    if (audioCapabilities2 == null) {
                        j("channelCount.aCaps");
                    } else {
                        String str = this.f20512a;
                        String str2 = this.f20513b;
                        int maxInputChannelCount = audioCapabilities2.getMaxInputChannelCount();
                        if (maxInputChannelCount <= 1 && ((i12 < 26 || maxInputChannelCount <= 0) && !"audio/mpeg".equals(str2) && !"audio/3gpp".equals(str2) && !"audio/amr-wb".equals(str2) && !"audio/mp4a-latm".equals(str2) && !"audio/vorbis".equals(str2) && !"audio/opus".equals(str2) && !"audio/raw".equals(str2) && !"audio/flac".equals(str2) && !"audio/g711-alaw".equals(str2) && !"audio/g711-mlaw".equals(str2) && !"audio/gsm".equals(str2))) {
                            int i15 = "audio/ac3".equals(str2) ? 6 : "audio/eac3".equals(str2) ? 16 : 30;
                            zzee.e("MediaCodecInfo", "AssumedMaxChannelAdjustment: " + str + ", [" + maxInputChannelCount + " to " + i15 + "]");
                            maxInputChannelCount = i15;
                        }
                        if (maxInputChannelCount < i14) {
                            j("channelCount.support, " + i14);
                        }
                    }
                }
                return false;
            }
        }
        return true;
    }

    public final boolean f(zzaf zzafVar) {
        if (this.f20519h) {
            return this.f20516e;
        }
        Pair pairB = zzrp.b(zzafVar);
        return pairB != null && ((Integer) pairB.first).intValue() == 42;
    }

    public final boolean g(int i10, int i11, double d10) {
        MediaCodecInfo.CodecCapabilities codecCapabilities = this.f20515d;
        if (codecCapabilities == null) {
            j("sizeAndRate.caps");
            return false;
        }
        MediaCodecInfo.VideoCapabilities videoCapabilities = codecCapabilities.getVideoCapabilities();
        if (videoCapabilities == null) {
            j("sizeAndRate.vCaps");
            return false;
        }
        if (zzew.f17494a >= 29) {
            int iA = zzqw.a(videoCapabilities, i10, i11, d10);
            if (iA == 2) {
                return true;
            }
            if (iA == 1) {
                j("sizeAndRate.cover, " + i10 + "x" + i11 + "@" + d10);
                return false;
            }
        }
        if (!k(videoCapabilities, i10, i11, d10)) {
            if (i10 >= i11 || (("OMX.MTK.VIDEO.DECODER.HEVC".equals(this.f20512a) && "mcv5a".equals(zzew.f17495b)) || !k(videoCapabilities, i11, i10, d10))) {
                j("sizeAndRate.support, " + i10 + "x" + i11 + "@" + d10);
                return false;
            }
            zzee.a("MediaCodecInfo", "AssumedSupport [" + ("sizeAndRate.rotated, " + i10 + "x" + i11 + "@" + d10) + "] [" + this.f20512a + ", " + this.f20513b + "] [" + zzew.f17498e + "]");
        }
        return true;
    }

    public final MediaCodecInfo.CodecProfileLevel[] h() {
        MediaCodecInfo.CodecProfileLevel[] codecProfileLevelArr;
        MediaCodecInfo.CodecCapabilities codecCapabilities = this.f20515d;
        return (codecCapabilities == null || (codecProfileLevelArr = codecCapabilities.profileLevels) == null) ? new MediaCodecInfo.CodecProfileLevel[0] : codecProfileLevelArr;
    }

    public final String toString() {
        return this.f20512a;
    }
}
