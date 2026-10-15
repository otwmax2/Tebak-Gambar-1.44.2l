###### Class com.google.android.gms.internal.ads.zzek (com.google.android.gms.internal.ads.zzek)
.class final Lcom/google/android/gms/internal/ads/zzek;
.super Landroid/content/BroadcastReceiver;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/ads/zzel;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzel;Lcom/google/android/gms/internal/ads/zzej;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzek;->a:Lcom/google/android/gms/internal/ads/zzel;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 11

    const-string p2, "connectivity"

    .line 1
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/net/ConnectivityManager;

    const/4 v0, 0x2

    const/16 v1, 0x9

    const/4 v2, 0x6

    const/4 v3, 0x4

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x5

    if-nez p2, :cond_14

    :catch_12
    :cond_12
    const/4 v0, 0x0

    goto :goto_4f

    .line 2
    :cond_14
    :try_start_14
    invoke-virtual {p2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p2
    :try_end_18
    .catch Ljava/lang/SecurityException; {:try_start_14 .. :try_end_18} :catch_12

    if-eqz p2, :cond_4e

    .line 3
    invoke-virtual {p2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v7

    if-nez v7, :cond_21

    goto :goto_4e

    .line 4
    :cond_21
    invoke-virtual {p2}, Landroid/net/NetworkInfo;->getType()I

    move-result v7

    if-eqz v7, :cond_38

    if-eq v7, v4, :cond_4f

    if-eq v7, v3, :cond_38

    if-eq v7, v6, :cond_38

    if-eq v7, v2, :cond_36

    if-eq v7, v1, :cond_34

    const/16 v0, 0x8

    goto :goto_4f

    :cond_34
    const/4 v0, 0x7

    goto :goto_4f

    :cond_36
    :pswitch_36
    const/4 v0, 0x5

    goto :goto_4f

    .line 5
    :cond_38
    invoke-virtual {p2}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result p2

    packed-switch p2, :pswitch_data_7e

    :pswitch_3f
    const/4 v0, 0x6

    goto :goto_4f

    .line 6
    :pswitch_41
    sget p2, Lcom/google/android/gms/internal/ads/zzew;->a:I

    const/16 v0, 0x1d

    if-lt p2, v0, :cond_12

    const/16 v0, 0x9

    goto :goto_4f

    :pswitch_4a
    const/4 v0, 0x4

    goto :goto_4f

    :pswitch_4c
    const/4 v0, 0x3

    goto :goto_4f

    :cond_4e
    :goto_4e
    const/4 v0, 0x1

    .line 7
    :cond_4f
    :goto_4f
    :pswitch_4f
    sget p2, Lcom/google/android/gms/internal/ads/zzew;->a:I

    const/16 v1, 0x1f

    if-lt p2, v1, :cond_78

    if-ne v0, v6, :cond_78

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzek;->a:Lcom/google/android/gms/internal/ads/zzel;

    :try_start_59
    const-string v0, "phone"

    .line 8
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;
    :try_end_61
    .catch Ljava/lang/RuntimeException; {:try_start_59 .. :try_end_61} :catch_74

    .line 9
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    :try_start_64
    new-instance v1, Lcom/google/android/gms/internal/ads/zzei;

    invoke-direct {v1, p2}, Lcom/google/android/gms/internal/ads/zzei;-><init>(Lcom/google/android/gms/internal/ads/zzel;)V

    .line 11
    invoke-virtual {p1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    invoke-virtual {v0, p1, v1}, Landroid/telephony/TelephonyManager;->registerTelephonyCallback(Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyCallback;)V

    .line 12
    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->unregisterTelephonyCallback(Landroid/telephony/TelephonyCallback;)V
    :try_end_73
    .catch Ljava/lang/RuntimeException; {:try_start_64 .. :try_end_73} :catch_74

    return-void

    .line 13
    :catch_74
    invoke-static {p2, v6}, Lcom/google/android/gms/internal/ads/zzel;->c(Lcom/google/android/gms/internal/ads/zzel;I)V

    return-void

    .line 14
    :cond_78
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzek;->a:Lcom/google/android/gms/internal/ads/zzel;

    .line 15
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzel;->c(Lcom/google/android/gms/internal/ads/zzel;I)V

    return-void

    :pswitch_data_7e
    .packed-switch 0x1
        :pswitch_4c
        :pswitch_4c
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_36
        :pswitch_4a
        :pswitch_4a
        :pswitch_3f
        :pswitch_4a
        :pswitch_4f
        :pswitch_3f
        :pswitch_41
    .end packed-switch
.end method
