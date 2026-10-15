###### Class com.google.android.gms.internal.ads.zzrp (com.google.android.gms.internal.ads.zzrp)
.class public final Lcom/google/android/gms/internal/ads/zzrp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "InlinedApi"
    }
.end annotation


# static fields
.field private static final a:Ljava/util/regex/Pattern;

.field private static final b:Ljava/util/HashMap;

.field private static c:I

.field public static final synthetic d:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "^\\D?(\\d+)$"

    .line 1
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzrp;->a:Ljava/util/regex/Pattern;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzrp;->b:Ljava/util/HashMap;

    const/4 v0, -0x1

    sput v0, Lcom/google/android/gms/internal/ads/zzrp;->c:I

    return-void
.end method

.method public static a()I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzrj;
        }
    .end annotation

    .line 1
    sget v0, Lcom/google/android/gms/internal/ads/zzrp;->c:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_66

    const-string v0, "video/avc"

    const/4 v2, 0x0

    invoke-static {v0, v2, v2}, Lcom/google/android/gms/internal/ads/zzrp;->c(Ljava/lang/String;ZZ)Lcom/google/android/gms/internal/ads/zzqx;

    move-result-object v0

    if-eqz v0, :cond_63

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzqx;->h()[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    move-result-object v0

    array-length v3, v0

    const/4 v4, 0x0

    :goto_14
    if-ge v2, v3, :cond_51

    aget-object v5, v0, v2

    .line 3
    iget v5, v5, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    const/4 v6, 0x1

    if-eq v5, v6, :cond_48

    const/4 v6, 0x2

    if-eq v5, v6, :cond_48

    sparse-switch v5, :sswitch_data_68

    const/4 v5, -0x1

    goto :goto_4a

    :sswitch_25
    const/high16 v5, 0x2200000

    goto :goto_4a

    :sswitch_28
    const/high16 v5, 0x900000

    goto :goto_4a

    :sswitch_2b
    const v5, 0x564000

    goto :goto_4a

    :sswitch_2f
    const/high16 v5, 0x220000

    goto :goto_4a

    :sswitch_32
    const/high16 v5, 0x200000

    goto :goto_4a

    :sswitch_35
    const/high16 v5, 0x140000

    goto :goto_4a

    :sswitch_38
    const v5, 0xe1000

    goto :goto_4a

    :sswitch_3c
    const v5, 0x65400

    goto :goto_4a

    :sswitch_40
    const v5, 0x31800

    goto :goto_4a

    :sswitch_44
    const v5, 0x18c00

    goto :goto_4a

    :cond_48
    const/16 v5, 0x6300

    :goto_4a
    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 4
    :cond_51
    sget v0, Lcom/google/android/gms/internal/ads/zzew;->a:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_5b

    const v0, 0x54600

    goto :goto_5e

    :cond_5b
    const v0, 0x2a300

    :goto_5e
    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_64

    :cond_63
    const/4 v0, 0x0

    :goto_64
    sput v0, Lcom/google/android/gms/internal/ads/zzrp;->c:I

    :cond_66
    return v0

    nop

    :sswitch_data_68
    .sparse-switch
        0x8 -> :sswitch_44
        0x10 -> :sswitch_44
        0x20 -> :sswitch_44
        0x40 -> :sswitch_40
        0x80 -> :sswitch_3c
        0x100 -> :sswitch_3c
        0x200 -> :sswitch_38
        0x400 -> :sswitch_35
        0x800 -> :sswitch_32
        0x1000 -> :sswitch_32
        0x2000 -> :sswitch_2f
        0x4000 -> :sswitch_2b
        0x8000 -> :sswitch_28
        0x10000 -> :sswitch_28
        0x20000 -> :sswitch_25
        0x40000 -> :sswitch_25
        0x80000 -> :sswitch_25
    .end sparse-switch
.end method

.method public static b(Lcom/google/android/gms/internal/ads/zzaf;)Landroid/util/Pair;
    .registers 18

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzaf;->i:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_8

    return-object v2

    :cond_8
    const-string v3, "\\."

    .line 2
    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 3
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzaf;->l:Ljava/lang/String;

    const-string v4, "video/dolby-vision"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/16 v7, 0x200

    const/16 v8, 0x100

    const/16 v9, 0x80

    const/16 v11, 0x40

    const/16 v12, 0x20

    const/16 v14, 0x1000

    const/16 v15, 0x8

    const/16 v5, 0x10

    const/4 v2, 0x3

    const/4 v10, 0x4

    const/4 v13, 0x2

    const-string v4, "MediaCodecUtil"

    const/4 v6, 0x1

    if-eqz v3, :cond_1f9

    .line 4
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzaf;->i:Ljava/lang/String;

    .line 5
    array-length v3, v1

    if-ge v3, v2, :cond_43

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Ignoring malformed Dolby Vision codec string: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-static {v4, v0}, Lcom/google/android/gms/internal/ads/zzee;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_40
    const/4 v2, 0x0

    goto/16 :goto_1f8

    :cond_43
    sget-object v3, Lcom/google/android/gms/internal/ads/zzrp;->a:Ljava/util/regex/Pattern;

    .line 7
    aget-object v2, v1, v6

    invoke-virtual {v3, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 8
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-nez v3, :cond_5f

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Ignoring malformed Dolby Vision codec string: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 9
    invoke-static {v4, v0}, Lcom/google/android/gms/internal/ads/zzee;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_40

    .line 10
    :cond_5f
    invoke-virtual {v2, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_68

    :goto_65
    const/4 v2, 0x0

    goto/16 :goto_10d

    .line 11
    :cond_68
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    packed-switch v2, :pswitch_data_842

    goto/16 :goto_d7

    :pswitch_71
    const-string v2, "09"

    .line 12
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d7

    const/16 v2, 0x9

    goto :goto_d8

    :pswitch_7c
    const-string v2, "08"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d7

    const/16 v2, 0x8

    goto :goto_d8

    :pswitch_87
    const-string v2, "07"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d7

    const/4 v2, 0x7

    goto :goto_d8

    :pswitch_91
    const-string v2, "06"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d7

    const/4 v2, 0x6

    goto :goto_d8

    :pswitch_9b
    const-string v2, "05"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d7

    const/4 v2, 0x5

    goto :goto_d8

    :pswitch_a5
    const-string v2, "04"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d7

    const/4 v2, 0x4

    goto :goto_d8

    :pswitch_af
    const-string v2, "03"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d7

    const/4 v2, 0x3

    goto :goto_d8

    :pswitch_b9
    const-string v2, "02"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d7

    const/4 v2, 0x2

    goto :goto_d8

    :pswitch_c3
    const-string v2, "01"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d7

    const/4 v2, 0x1

    goto :goto_d8

    :pswitch_cd
    const-string v2, "00"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d7

    const/4 v2, 0x0

    goto :goto_d8

    :cond_d7
    :goto_d7
    const/4 v2, -0x1

    :goto_d8
    packed-switch v2, :pswitch_data_85a

    goto :goto_65

    .line 13
    :pswitch_dc
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_10d

    .line 14
    :pswitch_e1
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_10d

    .line 15
    :pswitch_e6
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_10d

    .line 16
    :pswitch_eb
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_10d

    .line 17
    :pswitch_f0
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_10d

    .line 18
    :pswitch_f5
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_10d

    .line 19
    :pswitch_fa
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_10d

    .line 20
    :pswitch_ff
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_10d

    .line 21
    :pswitch_104
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_10d

    .line 22
    :pswitch_109
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_10d
    if-nez v2, :cond_11e

    .line 23
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Unknown Dolby Vision profile string: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 24
    invoke-static {v4, v0}, Lcom/google/android/gms/internal/ads/zzee;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_40

    .line 25
    :cond_11e
    aget-object v0, v1, v13

    if-nez v0, :cond_125

    :cond_122
    :goto_122
    const/4 v1, 0x0

    goto/16 :goto_1e1

    .line 26
    :cond_125
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    packed-switch v1, :pswitch_data_872

    packed-switch v1, :pswitch_data_888

    goto :goto_122

    :pswitch_130
    const-string v1, "13"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_122

    .line 27
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto/16 :goto_1e1

    :pswitch_13e
    const-string v1, "12"

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_122

    const/16 v1, 0x800

    .line 29
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto/16 :goto_1e1

    :pswitch_14e
    const-string v1, "11"

    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_122

    const/16 v1, 0x400

    .line 31
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto/16 :goto_1e1

    :pswitch_15e
    const-string v1, "10"

    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_122

    .line 33
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto/16 :goto_1e1

    :pswitch_16c
    const-string v1, "09"

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_122

    .line 35
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto/16 :goto_1e1

    :pswitch_17a
    const-string v1, "08"

    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_122

    .line 37
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_1e1

    :pswitch_187
    const-string v1, "07"

    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_122

    .line 39
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_1e1

    :pswitch_194
    const-string v1, "06"

    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_122

    .line 41
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_1e1

    :pswitch_1a1
    const-string v1, "05"

    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_122

    .line 43
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_1e1

    :pswitch_1ae
    const-string v1, "04"

    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_122

    .line 45
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_1e1

    :pswitch_1bb
    const-string v1, "03"

    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_122

    .line 47
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_1e1

    :pswitch_1c8
    const-string v1, "02"

    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_122

    .line 49
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_1e1

    :pswitch_1d5
    const-string v1, "01"

    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_122

    .line 51
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_1e1
    if-nez v1, :cond_1f2

    .line 52
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Unknown Dolby Vision level string: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 53
    invoke-static {v4, v0}, Lcom/google/android/gms/internal/ads/zzee;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_40

    :cond_1f2
    new-instance v0, Landroid/util/Pair;

    .line 54
    invoke-direct {v0, v2, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v2, v0

    :goto_1f8
    return-object v2

    :cond_1f9
    const/4 v2, 0x0

    .line 55
    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_894

    goto :goto_24a

    :sswitch_204
    const-string v2, "vp09"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24a

    const/4 v2, 0x2

    goto :goto_24b

    :sswitch_20e
    const-string v2, "mp4a"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24a

    const/4 v2, 0x6

    goto :goto_24b

    :sswitch_218
    const-string v2, "hvc1"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24a

    const/4 v2, 0x4

    goto :goto_24b

    :sswitch_222
    const-string v2, "hev1"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24a

    const/4 v2, 0x3

    goto :goto_24b

    :sswitch_22c
    const-string v2, "avc2"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24a

    const/4 v2, 0x1

    goto :goto_24b

    :sswitch_236
    const-string v2, "avc1"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24a

    const/4 v2, 0x0

    goto :goto_24b

    :sswitch_240
    const-string v2, "av01"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24a

    const/4 v2, 0x5

    goto :goto_24b

    :cond_24a
    :goto_24a
    const/4 v2, -0x1

    :goto_24b
    const/16 v3, 0x2000

    const/16 v11, 0x14

    packed-switch v2, :pswitch_data_8b2

    const/4 v0, 0x0

    return-object v0

    .line 56
    :pswitch_254
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzaf;->i:Ljava/lang/String;

    .line 57
    array-length v2, v1

    const/4 v3, 0x3

    if-eq v2, v3, :cond_26a

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Ignoring malformed MP4A codec string: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 58
    invoke-static {v4, v0}, Lcom/google/android/gms/internal/ads/zzee;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_267
    :goto_267
    const/4 v2, 0x0

    goto/16 :goto_2e3

    .line 59
    :cond_26a
    :try_start_26a
    aget-object v2, v1, v6

    invoke-static {v2, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    .line 60
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzbt;->d(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "audio/mp4a-latm"

    .line 61
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_267

    .line 62
    aget-object v1, v1, v13

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x11

    if-eq v1, v2, :cond_2c0

    if-eq v1, v11, :cond_2bc

    const/16 v2, 0x17

    if-eq v1, v2, :cond_2b9

    const/16 v2, 0x1d

    if-eq v1, v2, :cond_2b6

    const/16 v2, 0x27

    if-eq v1, v2, :cond_2b3

    const/16 v2, 0x2a

    if-eq v1, v2, :cond_2b0

    packed-switch v1, :pswitch_data_8c4

    const/4 v1, -0x1

    const/4 v5, -0x1

    goto :goto_2c3

    :pswitch_29e
    const/4 v1, -0x1

    const/4 v5, 0x6

    goto :goto_2c3

    :pswitch_2a1
    const/4 v1, -0x1

    const/4 v5, 0x5

    goto :goto_2c3

    :pswitch_2a4
    const/4 v1, -0x1

    const/4 v5, 0x4

    goto :goto_2c3

    :pswitch_2a7
    const/4 v1, -0x1

    const/4 v5, 0x3

    goto :goto_2c3

    :pswitch_2aa
    const/4 v1, -0x1

    const/4 v5, 0x2

    goto :goto_2c3

    :pswitch_2ad
    const/4 v1, -0x1

    const/4 v5, 0x1

    goto :goto_2c3

    :cond_2b0
    const/16 v5, 0x2a

    goto :goto_2c2

    :cond_2b3
    const/16 v5, 0x27

    goto :goto_2c2

    :cond_2b6
    const/16 v5, 0x1d

    goto :goto_2c2

    :cond_2b9
    const/16 v5, 0x17

    goto :goto_2c2

    :cond_2bc
    const/4 v1, -0x1

    const/16 v5, 0x14

    goto :goto_2c3

    :cond_2c0
    const/16 v5, 0x11

    :goto_2c2
    const/4 v1, -0x1

    :goto_2c3
    if-eq v5, v1, :cond_267

    new-instance v1, Landroid/util/Pair;

    .line 63
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2d3
    .catch Ljava/lang/NumberFormatException; {:try_start_26a .. :try_end_2d3} :catch_2d5

    move-object v2, v1

    goto :goto_2e3

    .line 64
    :catch_2d5
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Ignoring malformed MP4A codec string: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 65
    invoke-static {v4, v0}, Lcom/google/android/gms/internal/ads/zzee;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_267

    :goto_2e3
    return-object v2

    .line 66
    :pswitch_2e4
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaf;->i:Ljava/lang/String;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzaf;->x:Lcom/google/android/gms/internal/ads/zzq;

    .line 67
    array-length v11, v1

    if-ge v11, v10, :cond_2fb

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Ignoring malformed AV1 codec string: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 68
    invoke-static {v4, v0}, Lcom/google/android/gms/internal/ads/zzee;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2f8
    const/4 v2, 0x0

    goto/16 :goto_3d9

    .line 69
    :cond_2fb
    :try_start_2fb
    aget-object v11, v1, v6

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 70
    aget-object v5, v1, v13

    const/4 v8, 0x0

    invoke-virtual {v5, v8, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/4 v8, 0x3

    .line 71
    aget-object v1, v1, v8

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_313
    .catch Ljava/lang/NumberFormatException; {:try_start_2fb .. :try_end_313} :catch_3ca

    if-eqz v11, :cond_32a

    new-instance v0, Ljava/lang/StringBuilder;

    .line 72
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown AV1 profile: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/google/android/gms/internal/ads/zzee;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2f8

    :cond_32a
    if-eq v1, v15, :cond_358

    const/16 v2, 0xa

    if-eq v1, v2, :cond_345

    new-instance v0, Ljava/lang/StringBuilder;

    .line 73
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown AV1 bit depth: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/google/android/gms/internal/ads/zzee;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2f8

    :cond_345
    if-eqz v0, :cond_356

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzq;->d:[B

    if-nez v1, :cond_353

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzq;->c:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_353

    const/4 v1, 0x6

    if-ne v0, v1, :cond_356

    :cond_353
    const/16 v0, 0x1000

    goto :goto_359

    :cond_356
    const/4 v0, 0x2

    goto :goto_359

    :cond_358
    const/4 v0, 0x1

    :goto_359
    packed-switch v5, :pswitch_data_8d4

    const/4 v1, -0x1

    goto :goto_3a3

    :pswitch_35e
    const/high16 v1, 0x800000

    goto :goto_3a3

    :pswitch_361
    const/high16 v1, 0x400000

    goto :goto_3a3

    :pswitch_364
    const/high16 v1, 0x200000

    goto :goto_3a3

    :pswitch_367
    const/high16 v1, 0x100000

    goto :goto_3a3

    :pswitch_36a
    const/high16 v1, 0x80000

    goto :goto_3a3

    :pswitch_36d
    const/high16 v1, 0x40000

    goto :goto_3a3

    :pswitch_370
    const/high16 v1, 0x20000

    goto :goto_3a3

    :pswitch_373
    const/high16 v1, 0x10000

    goto :goto_3a3

    :pswitch_376
    const v1, 0x8000

    goto :goto_3a3

    :pswitch_37a
    const/16 v1, 0x4000

    goto :goto_3a3

    :pswitch_37d
    const/16 v1, 0x2000

    goto :goto_3a3

    :pswitch_380
    const/16 v1, 0x1000

    goto :goto_3a3

    :pswitch_383
    const/16 v1, 0x800

    goto :goto_3a3

    :pswitch_386
    const/16 v1, 0x400

    goto :goto_3a3

    :pswitch_389
    const/16 v1, 0x200

    goto :goto_3a3

    :pswitch_38c
    const/16 v1, 0x100

    goto :goto_3a3

    :pswitch_38f
    const/16 v1, 0x80

    goto :goto_3a3

    :pswitch_392
    const/16 v1, 0x40

    goto :goto_3a3

    :pswitch_395
    const/16 v1, 0x20

    goto :goto_3a3

    :pswitch_398
    const/16 v1, 0x10

    goto :goto_3a3

    :pswitch_39b
    const/16 v1, 0x8

    goto :goto_3a3

    :pswitch_39e
    const/4 v1, 0x4

    goto :goto_3a3

    :pswitch_3a0
    const/4 v1, 0x2

    goto :goto_3a3

    :pswitch_3a2
    const/4 v1, 0x1

    :goto_3a3
    const/4 v2, -0x1

    if-ne v1, v2, :cond_3bc

    new-instance v0, Ljava/lang/StringBuilder;

    .line 74
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown AV1 level: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/google/android/gms/internal/ads/zzee;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2f8

    :cond_3bc
    new-instance v2, Landroid/util/Pair;

    .line 75
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v2, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3d9

    .line 76
    :catch_3ca
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Ignoring malformed AV1 codec string: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 77
    invoke-static {v4, v0}, Lcom/google/android/gms/internal/ads/zzee;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2f8

    :goto_3d9
    return-object v2

    .line 78
    :pswitch_3da
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzaf;->i:Ljava/lang/String;

    .line 79
    array-length v2, v1

    if-ge v2, v10, :cond_3ef

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Ignoring malformed HEVC codec string: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 80
    invoke-static {v4, v0}, Lcom/google/android/gms/internal/ads/zzee;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3ec
    const/4 v2, 0x0

    goto/16 :goto_639

    :cond_3ef
    sget-object v2, Lcom/google/android/gms/internal/ads/zzrp;->a:Ljava/util/regex/Pattern;

    .line 81
    aget-object v5, v1, v6

    invoke-virtual {v2, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 82
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-nez v5, :cond_40b

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Ignoring malformed HEVC codec string: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 83
    invoke-static {v4, v0}, Lcom/google/android/gms/internal/ads/zzee;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3ec

    .line 84
    :cond_40b
    invoke-virtual {v2, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "1"

    .line 85
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_41a

    const/4 v0, 0x1

    :goto_418
    const/4 v2, 0x3

    goto :goto_424

    :cond_41a
    const-string v2, "2"

    .line 86
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_62a

    const/4 v0, 0x2

    goto :goto_418

    .line 87
    :goto_424
    aget-object v1, v1, v2

    if-nez v1, :cond_42b

    :goto_428
    const/4 v2, 0x0

    goto/16 :goto_60e

    .line 88
    :cond_42b
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_908

    goto/16 :goto_55a

    :sswitch_434
    const-string v2, "L186"

    .line 89
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_55a

    const/16 v5, 0xc

    goto/16 :goto_55b

    :sswitch_440
    const-string v2, "L183"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_55a

    const/16 v5, 0xb

    goto/16 :goto_55b

    :sswitch_44c
    const-string v2, "L180"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_55a

    const/16 v5, 0xa

    goto/16 :goto_55b

    :sswitch_458
    const-string v2, "L156"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_55a

    const/16 v5, 0x9

    goto/16 :goto_55b

    :sswitch_464
    const-string v2, "L153"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_55a

    const/16 v5, 0x8

    goto/16 :goto_55b

    :sswitch_470
    const-string v2, "L150"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_55a

    const/4 v5, 0x7

    goto/16 :goto_55b

    :sswitch_47b
    const-string v2, "L123"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_55a

    const/4 v5, 0x6

    goto/16 :goto_55b

    :sswitch_486
    const-string v2, "L120"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_55a

    const/4 v5, 0x5

    goto/16 :goto_55b

    :sswitch_491
    const-string v2, "H186"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_55a

    const/16 v5, 0x19

    goto/16 :goto_55b

    :sswitch_49d
    const-string v2, "H183"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_55a

    const/16 v5, 0x18

    goto/16 :goto_55b

    :sswitch_4a9
    const-string v2, "H180"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_55a

    const/16 v5, 0x17

    goto/16 :goto_55b

    :sswitch_4b5
    const-string v2, "H156"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_55a

    const/16 v5, 0x16

    goto/16 :goto_55b

    :sswitch_4c1
    const-string v2, "H153"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_55a

    const/16 v5, 0x15

    goto/16 :goto_55b

    :sswitch_4cd
    const-string v2, "H150"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_55a

    const/16 v5, 0x14

    goto/16 :goto_55b

    :sswitch_4d9
    const-string v2, "H123"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_55a

    const/16 v5, 0x13

    goto/16 :goto_55b

    :sswitch_4e5
    const-string v2, "H120"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_55a

    const/16 v5, 0x12

    goto/16 :goto_55b

    :sswitch_4f1
    const-string v2, "L93"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_55a

    const/4 v5, 0x4

    goto :goto_55b

    :sswitch_4fb
    const-string v2, "L90"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_55a

    const/4 v5, 0x3

    goto :goto_55b

    :sswitch_505
    const-string v2, "L63"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_55a

    const/4 v5, 0x2

    goto :goto_55b

    :sswitch_50f
    const-string v2, "L60"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_55a

    const/4 v5, 0x1

    goto :goto_55b

    :sswitch_519
    const-string v2, "L30"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_55a

    const/4 v5, 0x0

    goto :goto_55b

    :sswitch_523
    const-string v2, "H93"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_55a

    const/16 v5, 0x11

    goto :goto_55b

    :sswitch_52e
    const-string v2, "H90"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_55a

    const/16 v5, 0x10

    goto :goto_55b

    :sswitch_539
    const-string v2, "H63"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_55a

    const/16 v5, 0xf

    goto :goto_55b

    :sswitch_544
    const-string v2, "H60"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_55a

    const/16 v5, 0xe

    goto :goto_55b

    :sswitch_54f
    const-string v2, "H30"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_55a

    const/16 v5, 0xd

    goto :goto_55b

    :cond_55a
    :goto_55a
    const/4 v5, -0x1

    :goto_55b
    packed-switch v5, :pswitch_data_972

    goto/16 :goto_428

    :pswitch_560
    const/high16 v2, 0x2000000

    .line 90
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto/16 :goto_60e

    :pswitch_568
    const/high16 v2, 0x800000

    .line 91
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto/16 :goto_60e

    :pswitch_570
    const/high16 v2, 0x200000

    .line 92
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto/16 :goto_60e

    :pswitch_578
    const/high16 v2, 0x80000

    .line 93
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto/16 :goto_60e

    :pswitch_580
    const/high16 v2, 0x20000

    .line 94
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto/16 :goto_60e

    :pswitch_588
    const v2, 0x8000

    .line 95
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto/16 :goto_60e

    .line 96
    :pswitch_591
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto/16 :goto_60e

    :pswitch_597
    const/16 v2, 0x800

    .line 97
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto/16 :goto_60e

    .line 98
    :pswitch_59f
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto/16 :goto_60e

    .line 99
    :pswitch_5a5
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto/16 :goto_60e

    .line 100
    :pswitch_5ab
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_60e

    .line 101
    :pswitch_5b0
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_60e

    .line 102
    :pswitch_5b5
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_60e

    :pswitch_5ba
    const/high16 v2, 0x1000000

    .line 103
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_60e

    :pswitch_5c1
    const/high16 v2, 0x400000

    .line 104
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_60e

    :pswitch_5c8
    const/high16 v2, 0x100000

    .line 105
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_60e

    :pswitch_5cf
    const/high16 v2, 0x40000

    .line 106
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_60e

    :pswitch_5d6
    const/high16 v2, 0x10000

    .line 107
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_60e

    :pswitch_5dd
    const/16 v2, 0x4000

    .line 108
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_60e

    .line 109
    :pswitch_5e4
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_60e

    :pswitch_5e9
    const/16 v5, 0x400

    .line 110
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_60e

    :pswitch_5f0
    const/16 v8, 0x100

    .line 111
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_60e

    :pswitch_5f7
    const/16 v16, 0x40

    .line 112
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_60e

    :pswitch_5fe
    const/16 v2, 0x10

    .line 113
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_60e

    .line 114
    :pswitch_605
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_60e

    .line 115
    :pswitch_60a
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_60e
    if-nez v2, :cond_61f

    .line 116
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Unknown HEVC level string: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 117
    invoke-static {v4, v0}, Lcom/google/android/gms/internal/ads/zzee;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3ec

    :cond_61f
    new-instance v1, Landroid/util/Pair;

    .line 118
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v1, v0, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v2, v1

    goto :goto_639

    .line 119
    :cond_62a
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Unknown HEVC profile string: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 120
    invoke-static {v4, v0}, Lcom/google/android/gms/internal/ads/zzee;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3ec

    :goto_639
    return-object v2

    :pswitch_63a
    const/16 v2, 0x800

    const/16 v16, 0x40

    .line 121
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzaf;->i:Ljava/lang/String;

    .line 122
    array-length v5, v1

    const/4 v2, 0x3

    if-ge v5, v2, :cond_654

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Ignoring malformed VP9 codec string: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 123
    invoke-static {v4, v0}, Lcom/google/android/gms/internal/ads/zzee;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_651
    const/4 v2, 0x0

    goto/16 :goto_71b

    .line 124
    :cond_654
    :try_start_654
    aget-object v2, v1, v6

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 125
    aget-object v1, v1, v13

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_660
    .catch Ljava/lang/NumberFormatException; {:try_start_654 .. :try_end_660} :catch_70c

    if-eqz v2, :cond_672

    if-eq v2, v6, :cond_670

    if-eq v2, v13, :cond_66e

    const/4 v1, 0x3

    if-eq v2, v1, :cond_66b

    const/4 v1, -0x1

    goto :goto_673

    :cond_66b
    const/16 v1, 0x8

    goto :goto_673

    :cond_66e
    const/4 v1, 0x4

    goto :goto_673

    :cond_670
    const/4 v1, 0x2

    goto :goto_673

    :cond_672
    const/4 v1, 0x1

    :goto_673
    const/4 v5, -0x1

    if-ne v1, v5, :cond_68b

    new-instance v0, Ljava/lang/StringBuilder;

    .line 126
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown VP9 profile: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/google/android/gms/internal/ads/zzee;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_651

    :cond_68b
    const/16 v2, 0xa

    if-eq v0, v2, :cond_6e5

    const/16 v2, 0xb

    if-eq v0, v2, :cond_6e2

    if-eq v0, v11, :cond_6df

    const/16 v2, 0x15

    if-eq v0, v2, :cond_6db

    const/16 v2, 0x1e

    if-eq v0, v2, :cond_6d7

    const/16 v2, 0x1f

    if-eq v0, v2, :cond_6d3

    const/16 v2, 0x28

    if-eq v0, v2, :cond_6cf

    const/16 v2, 0x29

    if-eq v0, v2, :cond_6cb

    const/16 v2, 0x32

    if-eq v0, v2, :cond_6c7

    const/16 v2, 0x33

    if-eq v0, v2, :cond_6c3

    packed-switch v0, :pswitch_data_9aa

    const/4 v2, -0x1

    const/4 v6, -0x1

    goto :goto_6e6

    :pswitch_6b7
    const/4 v2, -0x1

    const/16 v6, 0x2000

    goto :goto_6e6

    :pswitch_6bb
    const/4 v2, -0x1

    const/16 v6, 0x1000

    goto :goto_6e6

    :pswitch_6bf
    const/4 v2, -0x1

    const/16 v6, 0x800

    goto :goto_6e6

    :cond_6c3
    const/4 v2, -0x1

    const/16 v6, 0x200

    goto :goto_6e6

    :cond_6c7
    const/4 v2, -0x1

    const/16 v6, 0x100

    goto :goto_6e6

    :cond_6cb
    const/4 v2, -0x1

    const/16 v6, 0x80

    goto :goto_6e6

    :cond_6cf
    const/4 v2, -0x1

    const/16 v6, 0x40

    goto :goto_6e6

    :cond_6d3
    const/4 v2, -0x1

    const/16 v6, 0x20

    goto :goto_6e6

    :cond_6d7
    const/4 v2, -0x1

    const/16 v6, 0x10

    goto :goto_6e6

    :cond_6db
    const/4 v2, -0x1

    const/16 v6, 0x8

    goto :goto_6e6

    :cond_6df
    const/4 v2, -0x1

    const/4 v6, 0x4

    goto :goto_6e6

    :cond_6e2
    const/4 v2, -0x1

    const/4 v6, 0x2

    goto :goto_6e6

    :cond_6e5
    const/4 v2, -0x1

    :goto_6e6
    if-ne v6, v2, :cond_6fe

    new-instance v1, Ljava/lang/StringBuilder;

    .line 127
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown VP9 level: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/google/android/gms/internal/ads/zzee;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_651

    :cond_6fe
    new-instance v2, Landroid/util/Pair;

    .line 128
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v2, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_71b

    .line 129
    :catch_70c
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Ignoring malformed VP9 codec string: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 130
    invoke-static {v4, v0}, Lcom/google/android/gms/internal/ads/zzee;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_651

    :goto_71b
    return-object v2

    :pswitch_71c
    const/16 v5, 0x400

    const/16 v16, 0x40

    .line 131
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzaf;->i:Ljava/lang/String;

    .line 132
    array-length v2, v1

    if-ge v2, v13, :cond_735

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Ignoring malformed AVC codec string: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 133
    invoke-static {v4, v0}, Lcom/google/android/gms/internal/ads/zzee;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_732
    const/4 v2, 0x0

    goto/16 :goto_840

    .line 134
    :cond_735
    :try_start_735
    aget-object v11, v1, v6

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    const/4 v3, 0x6

    if-ne v11, v3, :cond_756

    .line 135
    aget-object v2, v1, v6

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    .line 136
    aget-object v1, v1, v6

    invoke-virtual {v1, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_767

    :cond_756
    const/16 v3, 0x10

    const/4 v11, 0x3

    if-lt v2, v11, :cond_81b

    .line 137
    aget-object v2, v1, v6

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 138
    aget-object v1, v1, v13

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_767
    .catch Ljava/lang/NumberFormatException; {:try_start_735 .. :try_end_767} :catch_831

    :goto_767
    const/16 v1, 0x42

    if-eq v2, v1, :cond_79b

    const/16 v1, 0x4d

    if-eq v2, v1, :cond_799

    const/16 v1, 0x58

    if-eq v2, v1, :cond_796

    const/16 v1, 0x64

    if-eq v2, v1, :cond_792

    const/16 v1, 0x6e

    if-eq v2, v1, :cond_78e

    const/16 v1, 0x7a

    if-eq v2, v1, :cond_78a

    const/16 v1, 0xf4

    if-eq v2, v1, :cond_786

    const/4 v1, -0x1

    const/4 v13, -0x1

    goto :goto_79d

    :cond_786
    const/4 v1, -0x1

    const/16 v13, 0x40

    goto :goto_79d

    :cond_78a
    const/4 v1, -0x1

    const/16 v13, 0x20

    goto :goto_79d

    :cond_78e
    const/4 v1, -0x1

    const/16 v13, 0x10

    goto :goto_79d

    :cond_792
    const/4 v1, -0x1

    const/16 v13, 0x8

    goto :goto_79d

    :cond_796
    const/4 v1, -0x1

    const/4 v13, 0x4

    goto :goto_79d

    :cond_799
    const/4 v1, -0x1

    goto :goto_79d

    :cond_79b
    const/4 v1, -0x1

    const/4 v13, 0x1

    :goto_79d
    if-ne v13, v1, :cond_7b5

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    .line 140
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown AVC profile: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/google/android/gms/internal/ads/zzee;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_732

    :cond_7b5
    packed-switch v0, :pswitch_data_9b4

    packed-switch v0, :pswitch_data_9c0

    packed-switch v0, :pswitch_data_9ca

    packed-switch v0, :pswitch_data_9d4

    packed-switch v0, :pswitch_data_9de

    const/4 v1, -0x1

    goto :goto_7f4

    :pswitch_7c6
    const/high16 v1, 0x10000

    goto :goto_7f4

    :pswitch_7c9
    const v1, 0x8000

    goto :goto_7f4

    :pswitch_7cd
    const/16 v1, 0x4000

    goto :goto_7f4

    :pswitch_7d0
    const/16 v1, 0x2000

    goto :goto_7f4

    :pswitch_7d3
    const/16 v1, 0x1000

    goto :goto_7f4

    :pswitch_7d6
    const/16 v1, 0x800

    goto :goto_7f4

    :pswitch_7d9
    const/16 v1, 0x400

    goto :goto_7f4

    :pswitch_7dc
    const/16 v1, 0x200

    goto :goto_7f4

    :pswitch_7df
    const/16 v1, 0x100

    goto :goto_7f4

    :pswitch_7e2
    const/16 v1, 0x80

    goto :goto_7f4

    :pswitch_7e5
    const/16 v1, 0x40

    goto :goto_7f4

    :pswitch_7e8
    const/16 v1, 0x20

    goto :goto_7f4

    :pswitch_7eb
    const/16 v1, 0x10

    goto :goto_7f4

    :pswitch_7ee
    const/16 v1, 0x8

    goto :goto_7f4

    :pswitch_7f1
    const/4 v1, 0x4

    goto :goto_7f4

    :pswitch_7f3
    const/4 v1, 0x1

    :goto_7f4
    const/4 v2, -0x1

    if-ne v1, v2, :cond_80d

    new-instance v1, Ljava/lang/StringBuilder;

    .line 141
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown AVC level: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/google/android/gms/internal/ads/zzee;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_732

    :cond_80d
    new-instance v2, Landroid/util/Pair;

    .line 142
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v2, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_840

    .line 143
    :cond_81b
    :try_start_81b
    new-instance v1, Ljava/lang/StringBuilder;

    .line 144
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignoring malformed AVC codec string: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/google/android/gms/internal/ads/zzee;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_82f
    .catch Ljava/lang/NumberFormatException; {:try_start_81b .. :try_end_82f} :catch_831

    goto/16 :goto_732

    .line 145
    :catch_831
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Ignoring malformed AVC codec string: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 146
    invoke-static {v4, v0}, Lcom/google/android/gms/internal/ads/zzee;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_732

    :goto_840
    return-object v2

    nop

    :pswitch_data_842
    .packed-switch 0x600
        :pswitch_cd
        :pswitch_c3
        :pswitch_b9
        :pswitch_af
        :pswitch_a5
        :pswitch_9b
        :pswitch_91
        :pswitch_87
        :pswitch_7c
        :pswitch_71
    .end packed-switch

    :pswitch_data_85a
    .packed-switch 0x0
        :pswitch_109
        :pswitch_104
        :pswitch_ff
        :pswitch_fa
        :pswitch_f5
        :pswitch_f0
        :pswitch_eb
        :pswitch_e6
        :pswitch_e1
        :pswitch_dc
    .end packed-switch

    :pswitch_data_872
    .packed-switch 0x601
        :pswitch_1d5
        :pswitch_1c8
        :pswitch_1bb
        :pswitch_1ae
        :pswitch_1a1
        :pswitch_194
        :pswitch_187
        :pswitch_17a
        :pswitch_16c
    .end packed-switch

    :pswitch_data_888
    .packed-switch 0x61f
        :pswitch_15e
        :pswitch_14e
        :pswitch_13e
        :pswitch_130
    .end packed-switch

    :sswitch_data_894
    .sparse-switch
        0x2dd8f6 -> :sswitch_240
        0x2ddf23 -> :sswitch_236
        0x2ddf24 -> :sswitch_22c
        0x30d038 -> :sswitch_222
        0x310dbc -> :sswitch_218
        0x333790 -> :sswitch_20e
        0x374e43 -> :sswitch_204
    .end sparse-switch

    :pswitch_data_8b2
    .packed-switch 0x0
        :pswitch_71c
        :pswitch_71c
        :pswitch_63a
        :pswitch_3da
        :pswitch_3da
        :pswitch_2e4
        :pswitch_254
    .end packed-switch

    :pswitch_data_8c4
    .packed-switch 0x1
        :pswitch_2ad
        :pswitch_2aa
        :pswitch_2a7
        :pswitch_2a4
        :pswitch_2a1
        :pswitch_29e
    .end packed-switch

    :pswitch_data_8d4
    .packed-switch 0x0
        :pswitch_3a2
        :pswitch_3a0
        :pswitch_39e
        :pswitch_39b
        :pswitch_398
        :pswitch_395
        :pswitch_392
        :pswitch_38f
        :pswitch_38c
        :pswitch_389
        :pswitch_386
        :pswitch_383
        :pswitch_380
        :pswitch_37d
        :pswitch_37a
        :pswitch_376
        :pswitch_373
        :pswitch_370
        :pswitch_36d
        :pswitch_36a
        :pswitch_367
        :pswitch_364
        :pswitch_361
        :pswitch_35e
    .end packed-switch

    :sswitch_data_908
    .sparse-switch
        0x114a5 -> :sswitch_54f
        0x11502 -> :sswitch_544
        0x11505 -> :sswitch_539
        0x1155f -> :sswitch_52e
        0x11562 -> :sswitch_523
        0x123a9 -> :sswitch_519
        0x12406 -> :sswitch_50f
        0x12409 -> :sswitch_505
        0x12463 -> :sswitch_4fb
        0x12466 -> :sswitch_4f1
        0x2178e7 -> :sswitch_4e5
        0x2178ea -> :sswitch_4d9
        0x217944 -> :sswitch_4cd
        0x217947 -> :sswitch_4c1
        0x21794a -> :sswitch_4b5
        0x2179a1 -> :sswitch_4a9
        0x2179a4 -> :sswitch_49d
        0x2179a7 -> :sswitch_491
        0x234a63 -> :sswitch_486
        0x234a66 -> :sswitch_47b
        0x234ac0 -> :sswitch_470
        0x234ac3 -> :sswitch_464
        0x234ac6 -> :sswitch_458
        0x234b1d -> :sswitch_44c
        0x234b20 -> :sswitch_440
        0x234b23 -> :sswitch_434
    .end sparse-switch

    :pswitch_data_972
    .packed-switch 0x0
        :pswitch_60a
        :pswitch_605
        :pswitch_5fe
        :pswitch_5f7
        :pswitch_5f0
        :pswitch_5e9
        :pswitch_5e4
        :pswitch_5dd
        :pswitch_5d6
        :pswitch_5cf
        :pswitch_5c8
        :pswitch_5c1
        :pswitch_5ba
        :pswitch_5b5
        :pswitch_5b0
        :pswitch_5ab
        :pswitch_5a5
        :pswitch_59f
        :pswitch_597
        :pswitch_591
        :pswitch_588
        :pswitch_580
        :pswitch_578
        :pswitch_570
        :pswitch_568
        :pswitch_560
    .end packed-switch

    :pswitch_data_9aa
    .packed-switch 0x3c
        :pswitch_6bf
        :pswitch_6bb
        :pswitch_6b7
    .end packed-switch

    :pswitch_data_9b4
    .packed-switch 0xa
        :pswitch_7f3
        :pswitch_7f1
        :pswitch_7ee
        :pswitch_7eb
    .end packed-switch

    :pswitch_data_9c0
    .packed-switch 0x14
        :pswitch_7e8
        :pswitch_7e5
        :pswitch_7e2
    .end packed-switch

    :pswitch_data_9ca
    .packed-switch 0x1e
        :pswitch_7df
        :pswitch_7dc
        :pswitch_7d9
    .end packed-switch

    :pswitch_data_9d4
    .packed-switch 0x28
        :pswitch_7d6
        :pswitch_7d3
        :pswitch_7d0
    .end packed-switch

    :pswitch_data_9de
    .packed-switch 0x32
        :pswitch_7cd
        :pswitch_7c9
        :pswitch_7c6
    .end packed-switch
.end method

.method public static c(Ljava/lang/String;ZZ)Lcom/google/android/gms/internal/ads/zzqx;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzrj;
        }
    .end annotation

    const/4 p1, 0x0

    .line 1
    invoke-static {p0, p1, p1}, Lcom/google/android/gms/internal/ads/zzrp;->f(Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object p0

    .line 2
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_d

    const/4 p0, 0x0

    return-object p0

    :cond_d
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzqx;

    return-object p0
.end method

.method public static d()Lcom/google/android/gms/internal/ads/zzqx;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzrj;
        }
    .end annotation

    const-string v0, "audio/raw"

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1, v1}, Lcom/google/android/gms/internal/ads/zzrp;->c(Ljava/lang/String;ZZ)Lcom/google/android/gms/internal/ads/zzqx;

    move-result-object v0

    return-object v0
.end method

.method public static e(Lcom/google/android/gms/internal/ads/zzaf;)Ljava/lang/String;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaf;->l:Ljava/lang/String;

    const-string v1, "audio/eac3-joc"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const-string p0, "audio/eac3"

    return-object p0

    .line 2
    :cond_d
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaf;->l:Ljava/lang/String;

    const-string v1, "video/dolby-vision"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 3
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzrp;->b(Lcom/google/android/gms/internal/ads/zzaf;)Landroid/util/Pair;

    move-result-object p0

    if-eqz p0, :cond_38

    .line 4
    iget-object p0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/16 v0, 0x10

    if-eq p0, v0, :cond_35

    const/16 v0, 0x100

    if-ne p0, v0, :cond_2e

    goto :goto_35

    :cond_2e
    const/16 v0, 0x200

    if-ne p0, v0, :cond_38

    const-string p0, "video/avc"

    return-object p0

    :cond_35
    :goto_35
    const-string p0, "video/hevc"

    return-object p0

    :cond_38
    const/4 p0, 0x0

    return-object p0
.end method

.method public static declared-synchronized f(Ljava/lang/String;ZZ)Ljava/util/List;
    .registers 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzrj;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    const-class v3, Lcom/google/android/gms/internal/ads/zzrp;

    monitor-enter v3

    .line 1
    :try_start_9
    new-instance v4, Lcom/google/android/gms/internal/ads/zzrh;

    invoke-direct {v4, v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzrh;-><init>(Ljava/lang/String;ZZ)V

    sget-object v5, Lcom/google/android/gms/internal/ads/zzrp;->b:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;
    :try_end_16
    .catchall {:try_start_9 .. :try_end_16} :catchall_115

    if-eqz v6, :cond_1a

    monitor-exit v3

    return-object v6

    .line 2
    :cond_1a
    :try_start_1a
    sget v6, Lcom/google/android/gms/internal/ads/zzew;->a:I

    const/4 v7, 0x0

    const/16 v8, 0x15

    if-lt v6, v8, :cond_27

    new-instance v9, Lcom/google/android/gms/internal/ads/zzrn;

    .line 3
    invoke-direct {v9, v1, v2}, Lcom/google/android/gms/internal/ads/zzrn;-><init>(ZZ)V

    goto :goto_2c

    .line 4
    :cond_27
    new-instance v9, Lcom/google/android/gms/internal/ads/zzrm;

    invoke-direct {v9, v7}, Lcom/google/android/gms/internal/ads/zzrm;-><init>(Lcom/google/android/gms/internal/ads/zzrl;)V

    .line 5
    :goto_2c
    invoke-static {v4, v9}, Lcom/google/android/gms/internal/ads/zzrp;->h(Lcom/google/android/gms/internal/ads/zzrh;Lcom/google/android/gms/internal/ads/zzrk;)Ljava/util/ArrayList;

    move-result-object v2

    const/4 v9, 0x0

    if-eqz v1, :cond_74

    .line 6
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_74

    if-lt v6, v8, :cond_74

    const/16 v1, 0x17

    if-gt v6, v1, :cond_74

    new-instance v1, Lcom/google/android/gms/internal/ads/zzrm;

    invoke-direct {v1, v7}, Lcom/google/android/gms/internal/ads/zzrm;-><init>(Lcom/google/android/gms/internal/ads/zzrl;)V

    .line 7
    invoke-static {v4, v1}, Lcom/google/android/gms/internal/ads/zzrp;->h(Lcom/google/android/gms/internal/ads/zzrh;Lcom/google/android/gms/internal/ads/zzrk;)Ljava/util/ArrayList;

    move-result-object v2

    .line 8
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_74

    .line 9
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzqx;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzqx;->a:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "MediaCodecList API didn\'t list secure decoder for: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ". Assuming: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v7, "MediaCodecUtil"

    .line 10
    invoke-static {v7, v1}, Lcom/google/android/gms/internal/ads/zzee;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_74
    const-string v1, "audio/raw"

    .line 11
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_bc

    const/16 v0, 0x1a

    if-ge v6, v0, :cond_b7

    sget-object v0, Lcom/google/android/gms/internal/ads/zzew;->b:Ljava/lang/String;

    const-string v7, "R9"

    .line 12
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b7

    .line 13
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v1, :cond_b7

    .line 14
    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzqx;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzqx;->a:Ljava/lang/String;

    const-string v7, "OMX.MTK.AUDIO.DECODER.RAW"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b7

    const-string v10, "OMX.google.raw.decoder"

    const-string v11, "audio/raw"

    const-string v12, "audio/raw"

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    .line 15
    invoke-static/range {v10 .. v18}, Lcom/google/android/gms/internal/ads/zzqx;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;ZZZZZ)Lcom/google/android/gms/internal/ads/zzqx;

    move-result-object v0

    .line 16
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_b7
    sget-object v0, Lcom/google/android/gms/internal/ads/zzrf;->a:Lcom/google/android/gms/internal/ads/zzrf;

    .line 17
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/zzrp;->i(Ljava/util/List;Lcom/google/android/gms/internal/ads/zzro;)V

    :cond_bc
    if-ge v6, v8, :cond_e9

    .line 18
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v1, :cond_e9

    .line 19
    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzqx;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzqx;->a:Ljava/lang/String;

    const-string v7, "OMX.SEC.mp3.dec"

    .line 20
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_e4

    const-string v7, "OMX.SEC.MP3.Decoder"

    .line 21
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_e4

    const-string v7, "OMX.brcm.audio.mp3.decoder"

    .line 22
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e9

    :cond_e4
    sget-object v0, Lcom/google/android/gms/internal/ads/zzrg;->a:Lcom/google/android/gms/internal/ads/zzrg;

    .line 23
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/zzrp;->i(Ljava/util/List;Lcom/google/android/gms/internal/ads/zzro;)V

    :cond_e9
    const/16 v0, 0x20

    if-ge v6, v0, :cond_10c

    .line 24
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v1, :cond_10c

    .line 25
    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzqx;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzqx;->a:Ljava/lang/String;

    const-string v1, "OMX.qti.audio.decoder.flac"

    .line 26
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10c

    .line 27
    invoke-interface {v2, v9}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzqx;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    :cond_10c
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzfqk;->s(Ljava/util/Collection;)Lcom/google/android/gms/internal/ads/zzfqk;

    move-result-object v0

    .line 29
    invoke-virtual {v5, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_113
    .catchall {:try_start_1a .. :try_end_113} :catchall_115

    monitor-exit v3

    return-object v0

    :catchall_115
    move-exception v0

    monitor-exit v3

    throw v0
.end method

.method public static g(Ljava/util/List;Lcom/google/android/gms/internal/ads/zzaf;)Ljava/util/List;
    .registers 3

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance p0, Lcom/google/android/gms/internal/ads/zzrd;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzrd;-><init>(Lcom/google/android/gms/internal/ads/zzaf;)V

    .line 2
    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/zzrp;->i(Ljava/util/List;Lcom/google/android/gms/internal/ads/zzro;)V

    return-object v0
.end method

.method private static h(Lcom/google/android/gms/internal/ads/zzrh;Lcom/google/android/gms/internal/ads/zzrk;)Ljava/util/ArrayList;
    .registers 29
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzrj;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "secure-playback"

    const-string v4, "tunneled-playback"

    .line 1
    :try_start_8
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iget-object v15, v1, Lcom/google/android/gms/internal/ads/zzrh;->a:Ljava/lang/String;

    .line 2
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzrk;->zza()I

    move-result v14

    .line 3
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzrk;->b()Z

    move-result v16

    const/16 v17, 0x0

    const/4 v13, 0x0

    :goto_1a
    if-ge v13, v14, :cond_2fe

    .line 4
    invoke-interface {v2, v13}, Lcom/google/android/gms/internal/ads/zzrk;->z(I)Landroid/media/MediaCodecInfo;

    move-result-object v0

    .line 5
    sget v7, Lcom/google/android/gms/internal/ads/zzew;->a:I

    const/16 v8, 0x1d

    if-lt v7, v8, :cond_34

    .line 6
    invoke-virtual {v0}, Landroid/media/MediaCodecInfo;->isAlias()Z

    move-result v9

    if-eqz v9, :cond_34

    :cond_2c
    :goto_2c
    move/from16 v24, v13

    move/from16 v25, v14

    move-object/from16 v26, v15

    goto/16 :goto_2f4

    .line 7
    :cond_34
    invoke-virtual {v0}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v12

    .line 8
    invoke-virtual {v0}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v9
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_3c} :catch_2ff

    if-nez v9, :cond_2c

    const-string v9, ".secure"

    if-nez v16, :cond_48

    :try_start_42
    invoke-virtual {v12, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_2c

    :cond_48
    const/16 v10, 0x15

    if-ge v7, v10, :cond_7c

    const-string v10, "CIPAACDecoder"

    .line 9
    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2c

    const-string v10, "CIPMP3Decoder"

    .line 10
    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2c

    const-string v10, "CIPVorbisDecoder"

    .line 11
    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2c

    const-string v10, "CIPAMRNBDecoder"

    .line 12
    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2c

    const-string v10, "AACDecoder"

    .line 13
    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2c

    const-string v10, "MP3Decoder"

    .line 14
    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_7a} :catch_2ff

    if-nez v10, :cond_2c

    :cond_7c
    const/16 v10, 0x18

    const-string v11, "samsung"

    if-ge v7, v10, :cond_dc

    :try_start_82
    const-string v10, "OMX.SEC.aac.dec"

    .line 15
    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_92

    const-string v10, "OMX.Exynos.AAC.Decoder"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_dc

    :cond_92
    sget-object v10, Lcom/google/android/gms/internal/ads/zzew;->c:Ljava/lang/String;

    .line 16
    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_dc

    sget-object v10, Lcom/google/android/gms/internal/ads/zzew;->b:Ljava/lang/String;

    const-string v5, "zeroflte"

    .line 17
    invoke-virtual {v10, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2c

    const-string v5, "zerolte"

    .line 18
    invoke-virtual {v10, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2c

    const-string v5, "zenlte"

    .line 19
    invoke-virtual {v10, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2c

    const-string v5, "SC-05G"

    .line 20
    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2c

    const-string v5, "marinelteatt"

    .line 21
    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2c

    const-string v5, "404SC"

    .line 22
    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2c

    const-string v5, "SC-04G"

    .line 23
    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2c

    const-string v5, "SCV31"

    .line 24
    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_da
    .catch Ljava/lang/Exception; {:try_start_82 .. :try_end_da} :catch_2ff

    if-nez v5, :cond_2c

    :cond_dc
    const-string v5, "jflte"

    const/16 v10, 0x13

    if-gt v7, v10, :cond_11a

    :try_start_e2
    const-string v8, "OMX.SEC.vp8.dec"

    .line 25
    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_11a

    sget-object v8, Lcom/google/android/gms/internal/ads/zzew;->c:Ljava/lang/String;

    .line 26
    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_11a

    sget-object v8, Lcom/google/android/gms/internal/ads/zzew;->b:Ljava/lang/String;

    const-string v11, "d2"

    .line 27
    invoke-virtual {v8, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_2c

    const-string v11, "serrano"

    .line 28
    invoke-virtual {v8, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_2c

    .line 29
    invoke-virtual {v8, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_2c

    const-string v11, "santos"

    .line 30
    invoke-virtual {v8, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_2c

    const-string v11, "t0"

    .line 31
    invoke-virtual {v8, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2c

    :cond_11a
    if-gt v7, v10, :cond_12c

    sget-object v8, Lcom/google/android/gms/internal/ads/zzew;->b:Ljava/lang/String;

    .line 32
    invoke-virtual {v8, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_12c

    const-string v5, "OMX.qcom.video.decoder.vp8"

    .line 33
    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2c

    :cond_12c
    const/16 v5, 0x17

    if-gt v7, v5, :cond_140

    const-string v7, "audio/eac3-joc"

    .line 34
    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_140

    const-string v7, "OMX.MTK.AUDIO.DECODER.DSPAC3"

    .line 35
    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2c

    .line 36
    :cond_140
    invoke-virtual {v0}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v7

    .line 37
    array-length v8, v7

    const/4 v10, 0x0

    :goto_146
    if-ge v10, v8, :cond_154

    aget-object v11, v7, v10

    .line 38
    invoke-virtual {v11, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_151

    goto :goto_1b4

    :cond_151
    add-int/lit8 v10, v10, 0x1

    goto :goto_146

    :cond_154
    const-string v7, "video/dolby-vision"

    .line 39
    invoke-virtual {v15, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_17a

    const-string v7, "OMX.MS.HEVCDV.Decoder"

    .line 40
    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_167

    const-string v11, "video/hevcdv"

    goto :goto_1b4

    :cond_167
    const-string v7, "OMX.RTK.video.decoder"

    .line 41
    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_177

    const-string v7, "OMX.realtek.video.decoder.tunneled"

    .line 42
    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1b3

    :cond_177
    const-string v11, "video/dv_hevc"

    goto :goto_1b4

    :cond_17a
    const-string v7, "audio/alac"

    .line 43
    invoke-virtual {v15, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_18d

    const-string v7, "OMX.lge.alac.decoder"

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_18d

    const-string v11, "audio/x-lg-alac"

    goto :goto_1b4

    :cond_18d
    const-string v7, "audio/flac"

    .line 44
    invoke-virtual {v15, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1a0

    const-string v7, "OMX.lge.flac.decoder"

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1a0

    const-string v11, "audio/x-lg-flac"

    goto :goto_1b4

    :cond_1a0
    const-string v7, "audio/ac3"

    .line 45
    invoke-virtual {v15, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1b3

    const-string v7, "OMX.lge.ac3.decoder"

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1b3

    const-string v11, "audio/lg-ac3"
    :try_end_1b2
    .catch Ljava/lang/Exception; {:try_start_e2 .. :try_end_1b2} :catch_2ff

    goto :goto_1b4

    :cond_1b3
    const/4 v11, 0x0

    :goto_1b4
    if-eqz v11, :cond_2c

    .line 46
    :try_start_1b6
    invoke-virtual {v0, v11}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v10

    .line 47
    invoke-interface {v2, v4, v11, v10}, Lcom/google/android/gms/internal/ads/zzrk;->a(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;)Z

    move-result v7

    .line 48
    invoke-interface {v2, v4, v11, v10}, Lcom/google/android/gms/internal/ads/zzrk;->c(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;)Z

    move-result v8

    iget-boolean v5, v1, Lcom/google/android/gms/internal/ads/zzrh;->c:Z

    if-nez v5, :cond_1c9

    if-nez v8, :cond_2c

    goto :goto_1cd

    :cond_1c9
    if-nez v7, :cond_1cd

    goto/16 :goto_2c

    .line 49
    :cond_1cd
    :goto_1cd
    invoke-interface {v2, v3, v11, v10}, Lcom/google/android/gms/internal/ads/zzrk;->a(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;)Z

    move-result v5

    .line 50
    invoke-interface {v2, v3, v11, v10}, Lcom/google/android/gms/internal/ads/zzrk;->c(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;)Z

    move-result v7

    iget-boolean v8, v1, Lcom/google/android/gms/internal/ads/zzrh;->b:Z

    const/16 v20, 0x1

    if-nez v8, :cond_1de

    if-nez v7, :cond_2c

    goto :goto_1e1

    :cond_1de
    if-eqz v5, :cond_2c

    const/4 v5, 0x1

    :goto_1e1
    sget v7, Lcom/google/android/gms/internal/ads/zzew;->a:I

    const/16 v8, 0x1d

    if-lt v7, v8, :cond_1ee

    .line 51
    invoke-virtual {v0}, Landroid/media/MediaCodecInfo;->isHardwareAccelerated()Z

    move-result v8

    move/from16 v21, v8

    goto :goto_1f9

    .line 52
    :cond_1ee
    invoke-static {v0, v15}, Lcom/google/android/gms/internal/ads/zzrp;->j(Landroid/media/MediaCodecInfo;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1f7

    const/16 v21, 0x1

    goto :goto_1f9

    :cond_1f7
    const/16 v21, 0x0

    .line 53
    :goto_1f9
    invoke-static {v0, v15}, Lcom/google/android/gms/internal/ads/zzrp;->j(Landroid/media/MediaCodecInfo;Ljava/lang/String;)Z

    move-result v22

    const/16 v8, 0x1d

    if-lt v7, v8, :cond_206

    .line 54
    invoke-virtual {v0}, Landroid/media/MediaCodecInfo;->isVendor()Z

    move-result v0

    goto :goto_229

    .line 55
    :cond_206
    invoke-virtual {v0}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfnb;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v7, "omx.google."

    .line 56
    invoke-virtual {v0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_228

    const-string v7, "c2.android."

    .line 57
    invoke-virtual {v0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_228

    const-string v7, "c2.google."

    .line 58
    invoke-virtual {v0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_228

    const/4 v0, 0x1

    goto :goto_229

    :cond_228
    const/4 v0, 0x0

    :goto_229
    if-eqz v16, :cond_22f

    .line 59
    iget-boolean v7, v1, Lcom/google/android/gms/internal/ads/zzrh;->b:Z
    :try_end_22d
    .catch Ljava/lang/Exception; {:try_start_1b6 .. :try_end_22d} :catch_29e

    if-eq v7, v5, :cond_235

    :cond_22f
    if-nez v16, :cond_265

    :try_start_231
    iget-boolean v7, v1, Lcom/google/android/gms/internal/ads/zzrh;->b:Z
    :try_end_233
    .catch Ljava/lang/Exception; {:try_start_231 .. :try_end_233} :catch_25a

    if-nez v7, :cond_265

    :cond_235
    const/4 v5, 0x0

    const/16 v18, 0x0

    move-object v7, v12

    move-object v8, v15

    move-object v9, v11

    move-object/from16 v20, v11

    move/from16 v11, v21

    move-object/from16 v23, v12

    move/from16 v12, v22

    move/from16 v24, v13

    move v13, v0

    move/from16 v25, v14

    move v14, v5

    move-object/from16 v26, v15

    move/from16 v15, v18

    .line 60
    :try_start_24d
    invoke-static/range {v7 .. v15}, Lcom/google/android/gms/internal/ads/zzqx;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;ZZZZZ)Lcom/google/android/gms/internal/ads/zzqx;

    move-result-object v0

    .line 61
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2f4

    :catch_256
    move-exception v0

    move-object/from16 v1, v23

    goto :goto_2a8

    :catch_25a
    move-exception v0

    move-object/from16 v20, v11

    move/from16 v24, v13

    move/from16 v25, v14

    move-object/from16 v26, v15

    move-object v1, v12

    goto :goto_2a8

    :cond_265
    move-object/from16 v20, v11

    move-object/from16 v23, v12

    move/from16 v24, v13

    move/from16 v25, v14

    move-object/from16 v26, v15

    if-nez v16, :cond_2f4

    if-eqz v5, :cond_2f4

    new-instance v5, Ljava/lang/StringBuilder;

    .line 62
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_278
    .catch Ljava/lang/Exception; {:try_start_24d .. :try_end_278} :catch_256

    move-object/from16 v15, v23

    :try_start_27a
    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7
    :try_end_284
    .catch Ljava/lang/Exception; {:try_start_27a .. :try_end_284} :catch_29b

    const/4 v14, 0x0

    const/4 v5, 0x1

    move-object/from16 v8, v26

    move-object/from16 v9, v20

    move/from16 v11, v21

    move/from16 v12, v22

    move v13, v0

    move-object v1, v15

    move v15, v5

    .line 63
    :try_start_291
    invoke-static/range {v7 .. v15}, Lcom/google/android/gms/internal/ads/zzqx;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;ZZZZZ)Lcom/google/android/gms/internal/ads/zzqx;

    move-result-object v0

    .line 64
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_298
    .catch Ljava/lang/Exception; {:try_start_291 .. :try_end_298} :catch_299

    return-object v6

    :catch_299
    move-exception v0

    goto :goto_2a8

    :catch_29b
    move-exception v0

    move-object v1, v15

    goto :goto_2a8

    :catch_29e
    move-exception v0

    move-object/from16 v20, v11

    move-object v1, v12

    move/from16 v24, v13

    move/from16 v25, v14

    move-object/from16 v26, v15

    .line 65
    :goto_2a8
    :try_start_2a8
    sget v5, Lcom/google/android/gms/internal/ads/zzew;->a:I
    :try_end_2aa
    .catch Ljava/lang/Exception; {:try_start_2a8 .. :try_end_2aa} :catch_2ff

    const-string v7, "MediaCodecUtil"

    const/16 v8, 0x17

    if-gt v5, v8, :cond_2d0

    .line 66
    :try_start_2b0
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2d0

    new-instance v0, Ljava/lang/StringBuilder;

    .line 67
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Skipping codec "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " (failed to query capabilities)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/google/android/gms/internal/ads/zzee;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2f4

    :cond_2d0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 68
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to query codec "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v11, v20

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Lcom/google/android/gms/internal/ads/zzee;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    throw v0
    :try_end_2f4
    .catch Ljava/lang/Exception; {:try_start_2b0 .. :try_end_2f4} :catch_2ff

    :cond_2f4
    :goto_2f4
    add-int/lit8 v13, v24, 0x1

    move-object/from16 v1, p0

    move/from16 v14, v25

    move-object/from16 v15, v26

    goto/16 :goto_1a

    :cond_2fe
    return-object v6

    :catch_2ff
    move-exception v0

    .line 70
    new-instance v1, Lcom/google/android/gms/internal/ads/zzrj;

    const/4 v2, 0x0

    .line 71
    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzrj;-><init>(Ljava/lang/Throwable;Lcom/google/android/gms/internal/ads/zzri;)V

    goto :goto_308

    :goto_307
    throw v1

    :goto_308
    goto :goto_307
.end method

.method private static i(Ljava/util/List;Lcom/google/android/gms/internal/ads/zzro;)V
    .registers 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzre;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzre;-><init>(Lcom/google/android/gms/internal/ads/zzro;)V

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method private static j(Landroid/media/MediaCodecInfo;Ljava/lang/String;)Z
    .registers 4

    .line 1
    sget v0, Lcom/google/android/gms/internal/ads/zzew;->a:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_b

    .line 2
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo;->isSoftwareOnly()Z

    move-result p0

    return p0

    .line 3
    :cond_b
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbt;->g(Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_13

    return v0

    .line 4
    :cond_13
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzfnb;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "arc."

    .line 5
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_25

    return v1

    :cond_25
    const-string p1, "omx.google."

    .line 6
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_70

    const-string p1, "omx.ffmpeg."

    .line 7
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_70

    const-string p1, "omx.sec."

    .line 8
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_45

    const-string p1, ".sw."

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_70

    :cond_45
    const-string p1, "omx.qcom.video.decoder.hevcswvdec"

    .line 9
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_70

    const-string p1, "c2.android."

    .line 10
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_70

    const-string p1, "c2.google."

    .line 11
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_70

    const-string p1, "omx."

    .line 12
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_6f

    const-string p1, "c2."

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_6e

    goto :goto_70

    :cond_6e
    return v1

    :cond_6f
    const/4 v0, 0x0

    :cond_70
    :goto_70
    return v0
.end method

###### Class com.google.android.gms.internal.ads.zzrd (com.google.android.gms.internal.ads.zzrd)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzrd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzro;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/internal/ads/zzaf;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzaf;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzrd;->a:Lcom/google/android/gms/internal/ads/zzaf;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)I
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrd;->a:Lcom/google/android/gms/internal/ads/zzaf;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzqx;

    sget v1, Lcom/google/android/gms/internal/ads/zzrp;->d:I

    .line 1
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzqx;->d(Lcom/google/android/gms/internal/ads/zzaf;)Z

    move-result p1

    if-eqz p1, :cond_e

    const/4 p1, 0x1

    return p1

    :cond_e
    const/4 p1, 0x0

    return p1
.end method

###### Class com.google.android.gms.internal.ads.zzre (com.google.android.gms.internal.ads.zzre)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzre;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic o:Lcom/google/android/gms/internal/ads/zzro;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzro;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzre;->o:Lcom/google/android/gms/internal/ads/zzro;

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzre;->o:Lcom/google/android/gms/internal/ads/zzro;

    sget v1, Lcom/google/android/gms/internal/ads/zzrp;->d:I

    .line 1
    invoke-interface {v0, p2}, Lcom/google/android/gms/internal/ads/zzro;->a(Ljava/lang/Object;)I

    move-result p2

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzro;->a(Ljava/lang/Object;)I

    move-result p1

    sub-int/2addr p2, p1

    return p2
.end method

###### Class com.google.android.gms.internal.ads.zzrf (com.google.android.gms.internal.ads.zzrf)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzrf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzro;


# static fields
.field public static final synthetic a:Lcom/google/android/gms/internal/ads/zzrf;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzrf;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzrf;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzrf;->a:Lcom/google/android/gms/internal/ads/zzrf;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)I
    .registers 5

    check-cast p1, Lcom/google/android/gms/internal/ads/zzqx;

    sget v0, Lcom/google/android/gms/internal/ads/zzrp;->d:I

    .line 1
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzqx;->a:Ljava/lang/String;

    const-string v0, "OMX.google"

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_2a

    const-string v0, "c2.android"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    goto :goto_2a

    .line 3
    :cond_19
    sget v0, Lcom/google/android/gms/internal/ads/zzew;->a:I

    const/16 v2, 0x1a

    if-ge v0, v2, :cond_2b

    const-string v0, "OMX.MTK.AUDIO.DECODER.RAW"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_29

    const/4 v1, -0x1

    goto :goto_2b

    :cond_29
    return v1

    :cond_2a
    :goto_2a
    const/4 v1, 0x1

    :cond_2b
    :goto_2b
    return v1
.end method

###### Class com.google.android.gms.internal.ads.zzrg (com.google.android.gms.internal.ads.zzrg)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzrg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzro;


# static fields
.field public static final synthetic a:Lcom/google/android/gms/internal/ads/zzrg;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzrg;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzrg;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzrg;->a:Lcom/google/android/gms/internal/ads/zzrg;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Lcom/google/android/gms/internal/ads/zzqx;

    sget v0, Lcom/google/android/gms/internal/ads/zzrp;->d:I

    .line 1
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzqx;->a:Ljava/lang/String;

    const-string v0, "OMX.google"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_10

    const/4 p1, 0x1

    return p1

    :cond_10
    const/4 p1, 0x0

    return p1
.end method
