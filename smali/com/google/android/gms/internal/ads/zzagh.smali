###### Class com.google.android.gms.internal.ads.zzagh (com.google.android.gms.internal.ads.zzagh)
.class public final Lcom/google/android/gms/internal/ads/zzagh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field public final a:Z

.field public final b:Ljava/lang/String;

.field public final c:Lcom/google/android/gms/internal/ads/zzaba;

.field public final d:I

.field public final e:[B


# direct methods
.method public constructor <init>(ZLjava/lang/String;I[BII[B)V
    .registers 12

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p3, :cond_9

    const/4 v2, 0x1

    goto :goto_a

    :cond_9
    const/4 v2, 0x0

    :goto_a
    if-nez p7, :cond_e

    const/4 v3, 0x1

    goto :goto_f

    :cond_e
    const/4 v3, 0x0

    :goto_f
    xor-int/2addr v2, v3

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzdl;->d(Z)V

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzagh;->a:Z

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzagh;->b:Ljava/lang/String;

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzagh;->d:I

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzagh;->e:[B

    new-instance p1, Lcom/google/android/gms/internal/ads/zzaba;

    const/4 p3, 0x2

    if-nez p2, :cond_21

    goto :goto_77

    :cond_21
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p7

    const/4 v2, 0x3

    sparse-switch p7, :sswitch_data_7e

    goto :goto_51

    :sswitch_2a
    const-string p7, "cens"

    .line 2
    invoke-virtual {p2, p7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p7

    if-eqz p7, :cond_51

    const/4 v0, 0x1

    goto :goto_52

    :sswitch_34
    const-string p7, "cenc"

    invoke-virtual {p2, p7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p7

    if-eqz p7, :cond_51

    goto :goto_52

    :sswitch_3d
    const-string p7, "cbcs"

    invoke-virtual {p2, p7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p7

    if-eqz p7, :cond_51

    const/4 v0, 0x3

    goto :goto_52

    :sswitch_47
    const-string p7, "cbc1"

    invoke-virtual {p2, p7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p7

    if-eqz p7, :cond_51

    const/4 v0, 0x2

    goto :goto_52

    :cond_51
    :goto_51
    const/4 v0, -0x1

    :goto_52
    if-eqz v0, :cond_77

    if-eq v0, v1, :cond_77

    if-eq v0, p3, :cond_76

    if-eq v0, v2, :cond_76

    .line 3
    new-instance p3, Ljava/lang/StringBuilder;

    .line 4
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p7, "Unsupported protection scheme type \'"

    invoke-virtual {p3, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\'. Assuming AES-CTR crypto mode."

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "TrackEncryptionBox"

    invoke-static {p3, p2}, Lcom/google/android/gms/internal/ads/zzee;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_77

    :cond_76
    const/4 v1, 0x2

    .line 5
    :cond_77
    :goto_77
    invoke-direct {p1, v1, p4, p5, p6}, Lcom/google/android/gms/internal/ads/zzaba;-><init>(I[BII)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzagh;->c:Lcom/google/android/gms/internal/ads/zzaba;

    return-void

    nop

    :sswitch_data_7e
    .sparse-switch
        0x2e7ccd -> :sswitch_47
        0x2e7d0f -> :sswitch_3d
        0x2e8997 -> :sswitch_34
        0x2e89a7 -> :sswitch_2a
    .end sparse-switch
.end method
