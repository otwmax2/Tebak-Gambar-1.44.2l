###### Class com.google.android.gms.internal.ads.zzbt (com.google.android.gms.internal.ads.zzbt)
.class public final Lcom/google/android/gms/internal/ads/zzbt;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# static fields
.field private static final a:Ljava/util/ArrayList;

.field private static final b:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbt;->a:Ljava/util/ArrayList;

    const-string v0, "^mp4a\\.([a-zA-Z0-9]{2})(?:\\.([0-9]{1,2}))?$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbt;->b:Ljava/util/regex/Pattern;

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)I
    .registers 9

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x7

    const/16 v3, 0x9

    const/4 v4, 0x5

    const/4 v5, 0x6

    const/4 v6, 0x0

    sparse-switch v0, :sswitch_data_9c

    goto/16 :goto_77

    :sswitch_11
    const-string v0, "audio/true-hd"

    .line 1
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_77

    const/16 p0, 0x8

    goto :goto_78

    :sswitch_1c
    const-string v0, "audio/vnd.dts.hd"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_77

    const/4 p0, 0x7

    goto :goto_78

    :sswitch_26
    const-string v0, "audio/opus"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_77

    const/16 p0, 0x9

    goto :goto_78

    :sswitch_31
    const-string v0, "audio/mpeg"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_77

    const/4 p0, 0x0

    goto :goto_78

    :sswitch_3b
    const-string v0, "audio/eac3"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_77

    const/4 p0, 0x3

    goto :goto_78

    :sswitch_45
    const-string v0, "audio/ac4"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_77

    const/4 p0, 0x5

    goto :goto_78

    :sswitch_4f
    const-string v0, "audio/ac3"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_77

    const/4 p0, 0x2

    goto :goto_78

    :sswitch_59
    const-string v0, "audio/mp4a-latm"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_77

    const/4 p0, 0x1

    goto :goto_78

    :sswitch_63
    const-string v0, "audio/vnd.dts"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_77

    const/4 p0, 0x6

    goto :goto_78

    :sswitch_6d
    const-string v0, "audio/eac3-joc"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_77

    const/4 p0, 0x4

    goto :goto_78

    :cond_77
    :goto_77
    const/4 p0, -0x1

    :goto_78
    packed-switch p0, :pswitch_data_c6

    return v6

    :pswitch_7c
    const/16 p0, 0x14

    return p0

    :pswitch_7f
    const/16 p0, 0xe

    return p0

    :pswitch_82
    return v1

    :pswitch_83
    return v2

    :pswitch_84
    const/16 p0, 0x11

    return p0

    :pswitch_87
    const/16 p0, 0x12

    return p0

    :pswitch_8a
    return v5

    :pswitch_8b
    return v4

    :pswitch_8c
    if-nez p1, :cond_8f

    return v6

    :cond_8f
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbt;->c(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzbs;

    move-result-object p0

    if-nez p0, :cond_96

    return v6

    :cond_96
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbs;->a()I

    move-result p0

    return p0

    :pswitch_9b
    return v3

    :sswitch_data_9c
    .sparse-switch
        -0x7e929daa -> :sswitch_6d
        -0x41455b98 -> :sswitch_63
        -0x3313c2e -> :sswitch_59
        0xb269698 -> :sswitch_4f
        0xb269699 -> :sswitch_45
        0x59ae0c65 -> :sswitch_3b
        0x59b1e81e -> :sswitch_31
        0x59b2d2d8 -> :sswitch_26
        0x59c2dc42 -> :sswitch_1c
        0x5cc95062 -> :sswitch_11
    .end sparse-switch

    :pswitch_data_c6
    .packed-switch 0x0
        :pswitch_9b
        :pswitch_8c
        :pswitch_8b
        :pswitch_8a
        :pswitch_87
        :pswitch_84
        :pswitch_83
        :pswitch_82
        :pswitch_7f
        :pswitch_7c
    .end packed-switch
.end method

.method public static b(Ljava/lang/String;)I
    .registers 6

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_8

    return v1

    .line 2
    :cond_8
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzbt;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 p0, 0x1

    return p0

    .line 3
    :cond_10
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzbt;->h(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d1

    .line 4
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzbt;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "text"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_cf

    const-string v0, "application/cea-608"

    .line 5
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_cf

    const-string v0, "application/cea-708"

    .line 6
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_cf

    const-string v0, "application/x-mp4-cea-608"

    .line 7
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_cf

    const-string v0, "application/x-subrip"

    .line 8
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_cf

    const-string v0, "application/ttml+xml"

    .line 9
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_cf

    const-string v0, "application/x-quicktime-tx3g"

    .line 10
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_cf

    const-string v0, "application/x-mp4-vtt"

    .line 11
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_cf

    const-string v0, "application/x-rawcc"

    .line 12
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_cf

    const-string v0, "application/vobsub"

    .line 13
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_cf

    const-string v0, "application/pgs"

    .line 14
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_cf

    const-string v0, "application/dvbsubs"

    .line 15
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7b

    goto :goto_cf

    .line 16
    :cond_7b
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzbt;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "image"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_89

    const/4 p0, 0x4

    return p0

    :cond_89
    const-string v0, "application/id3"

    .line 17
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_cd

    const-string v0, "application/x-emsg"

    .line 18
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_cd

    const-string v0, "application/x-scte35"

    .line 19
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a2

    goto :goto_cd

    :cond_a2
    const-string v0, "application/x-camera-motion"

    .line 20
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_cb

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbt;->a:Ljava/util/ArrayList;

    .line 21
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_b2
    if-ge v3, v0, :cond_ca

    sget-object v4, Lcom/google/android/gms/internal/ads/zzbt;->a:Ljava/util/ArrayList;

    .line 22
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/zzbr;

    .line 23
    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzbr;->a:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c7

    const/4 v1, 0x0

    goto :goto_ca

    :cond_c7
    add-int/lit8 v3, v3, 0x1

    goto :goto_b2

    :cond_ca
    :goto_ca
    return v1

    :cond_cb
    const/4 p0, 0x6

    return p0

    :cond_cd
    :goto_cd
    const/4 p0, 0x5

    return p0

    :cond_cf
    :goto_cf
    const/4 p0, 0x3

    return p0

    :cond_d1
    const/4 p0, 0x2

    return p0
.end method

.method static c(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzbs;
    .registers 4

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbt;->b:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 2
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_e

    return-object v1

    :cond_e
    const/4 v0, 0x1

    .line 3
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x2

    .line 5
    invoke-virtual {p0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    const/16 v2, 0x10

    .line 6
    :try_start_1d
    invoke-static {v0, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz p0, :cond_28

    .line 7
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_27
    .catch Ljava/lang/NumberFormatException; {:try_start_1d .. :try_end_27} :catch_2e

    goto :goto_29

    :cond_28
    const/4 p0, 0x0

    :goto_29
    new-instance v1, Lcom/google/android/gms/internal/ads/zzbs;

    invoke-direct {v1, v0, p0}, Lcom/google/android/gms/internal/ads/zzbs;-><init>(II)V

    :catch_2e
    return-object v1
.end method

.method public static d(I)Ljava/lang/String;
    .registers 2

    const/16 v0, 0x20

    if-eq p0, v0, :cond_52

    const/16 v0, 0x21

    if-eq p0, v0, :cond_4f

    const/16 v0, 0x23

    if-eq p0, v0, :cond_4c

    const/16 v0, 0x40

    if-eq p0, v0, :cond_49

    const/16 v0, 0xa3

    if-eq p0, v0, :cond_46

    const/16 v0, 0xb1

    if-eq p0, v0, :cond_43

    const/16 v0, 0xa5

    if-eq p0, v0, :cond_40

    const/16 v0, 0xa6

    if-eq p0, v0, :cond_3d

    packed-switch p0, :pswitch_data_56

    packed-switch p0, :pswitch_data_72

    const/4 p0, 0x0

    return-object p0

    :pswitch_28
    const-string p0, "audio/ac4"

    return-object p0

    :pswitch_2b
    const-string p0, "audio/opus"

    return-object p0

    :pswitch_2e
    const-string p0, "audio/vnd.dts.hd"

    return-object p0

    :pswitch_31
    const-string p0, "audio/vnd.dts"

    return-object p0

    :pswitch_34
    const-string p0, "video/mpeg"

    return-object p0

    :pswitch_37
    const-string p0, "audio/mpeg"

    return-object p0

    :pswitch_3a
    const-string p0, "video/mpeg2"

    return-object p0

    :cond_3d
    const-string p0, "audio/eac3"

    return-object p0

    :cond_40
    const-string p0, "audio/ac3"

    return-object p0

    :cond_43
    const-string p0, "video/x-vnd.on2.vp9"

    return-object p0

    :cond_46
    const-string p0, "video/wvc1"

    return-object p0

    :cond_49
    :pswitch_49
    const-string p0, "audio/mp4a-latm"

    return-object p0

    :cond_4c
    const-string p0, "video/hevc"

    return-object p0

    :cond_4f
    const-string p0, "video/avc"

    return-object p0

    :cond_52
    const-string p0, "video/mp4v-es"

    return-object p0

    nop

    :pswitch_data_56
    .packed-switch 0x60
        :pswitch_3a
        :pswitch_3a
        :pswitch_3a
        :pswitch_3a
        :pswitch_3a
        :pswitch_3a
        :pswitch_49
        :pswitch_49
        :pswitch_49
        :pswitch_37
        :pswitch_34
        :pswitch_37
    .end packed-switch

    :pswitch_data_72
    .packed-switch 0xa9
        :pswitch_31
        :pswitch_2e
        :pswitch_2e
        :pswitch_31
        :pswitch_2b
        :pswitch_28
    .end packed-switch
.end method

.method public static e(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x3c11ec0a

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v1, :cond_2a

    const v1, -0x22f81362

    if-eq v0, v1, :cond_20

    const v1, 0xb26c537

    if-eq v0, v1, :cond_16

    goto :goto_34

    :cond_16
    const-string v0, "audio/mp3"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    const/4 v0, 0x1

    goto :goto_35

    :cond_20
    const-string v0, "audio/x-wav"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    const/4 v0, 0x2

    goto :goto_35

    :cond_2a
    const-string v0, "audio/x-flac"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    const/4 v0, 0x0

    goto :goto_35

    :cond_34
    :goto_34
    const/4 v0, -0x1

    :goto_35
    if-eqz v0, :cond_42

    if-eq v0, v3, :cond_3f

    if-eq v0, v2, :cond_3c

    return-object p0

    :cond_3c
    const-string p0, "audio/wav"

    return-object p0

    :cond_3f
    const-string p0, "audio/mpeg"

    return-object p0

    :cond_42
    const-string p0, "audio/flac"

    return-object p0
.end method

.method public static f(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x1

    sparse-switch v1, :sswitch_data_9c

    goto/16 :goto_80

    :sswitch_e
    const-string v1, "audio/g711-mlaw"

    .line 1
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_80

    const/4 p0, 0x5

    goto/16 :goto_81

    :sswitch_19
    const-string v1, "audio/g711-alaw"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_80

    const/4 p0, 0x4

    goto :goto_81

    :sswitch_23
    const-string v1, "audio/mpeg"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_80

    const/4 p0, 0x0

    goto :goto_81

    :sswitch_2d
    const-string v1, "audio/flac"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_80

    const/4 p0, 0x6

    goto :goto_81

    :sswitch_37
    const-string v1, "audio/eac3"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_80

    const/16 p0, 0x8

    goto :goto_81

    :sswitch_42
    const-string v1, "audio/raw"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_80

    const/4 p0, 0x3

    goto :goto_81

    :sswitch_4c
    const-string v1, "audio/ac3"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_80

    const/4 p0, 0x7

    goto :goto_81

    :sswitch_56
    const-string v1, "audio/mp4a-latm"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_80

    const/16 p0, 0xa

    goto :goto_81

    :sswitch_61
    const-string v1, "audio/mpeg-L2"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_80

    const/4 p0, 0x2

    goto :goto_81

    :sswitch_6b
    const-string v1, "audio/mpeg-L1"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_80

    const/4 p0, 0x1

    goto :goto_81

    :sswitch_75
    const-string v1, "audio/eac3-joc"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_80

    const/16 p0, 0x9

    goto :goto_81

    :cond_80
    :goto_80
    const/4 p0, -0x1

    :goto_81
    packed-switch p0, :pswitch_data_ca

    return v0

    :pswitch_85
    if-nez p1, :cond_88

    return v0

    :cond_88
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbt;->c(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzbs;

    move-result-object p0

    if-nez p0, :cond_8f

    return v0

    :cond_8f
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbs;->a()I

    move-result p0

    if-eqz p0, :cond_9a

    const/16 p1, 0x10

    if-eq p0, p1, :cond_9a

    return v2

    :cond_9a
    return v0

    :pswitch_9b
    return v2

    :sswitch_data_9c
    .sparse-switch
        -0x7e929daa -> :sswitch_75
        -0x19cc928c -> :sswitch_6b
        -0x19cc928b -> :sswitch_61
        -0x3313c2e -> :sswitch_56
        0xb269698 -> :sswitch_4c
        0xb26d66f -> :sswitch_42
        0x59ae0c65 -> :sswitch_37
        0x59aeaa01 -> :sswitch_2d
        0x59b1e81e -> :sswitch_23
        0x71710385 -> :sswitch_19
        0x717677f9 -> :sswitch_e
    .end sparse-switch

    :pswitch_data_ca
    .packed-switch 0x0
        :pswitch_9b
        :pswitch_9b
        :pswitch_9b
        :pswitch_9b
        :pswitch_9b
        :pswitch_9b
        :pswitch_9b
        :pswitch_9b
        :pswitch_9b
        :pswitch_9b
        :pswitch_85
    .end packed-switch
.end method

.method public static g(Ljava/lang/String;)Z
    .registers 2

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzbt;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "audio"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static h(Ljava/lang/String;)Z
    .registers 2

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzbt;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "video"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static i(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    const/16 v1, 0x2f

    .line 1
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_e

    return-object v0

    :cond_e
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
