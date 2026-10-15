###### Class com.google.android.gms.ads.internal.overlay.zza (com.google.android.gms.ads.internal.overlay.zza)
.class public final Lcom/google/android/gms/ads/internal/overlay/zza;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Landroid/content/Context;Landroid/content/Intent;Lcom/google/android/gms/ads/internal/overlay/zzz;Lcom/google/android/gms/ads/internal/overlay/zzx;Z)Z
    .registers 7

    if-eqz p4, :cond_b

    .line 1
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    .line 2
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/gms/ads/internal/overlay/zza;->c(Landroid/content/Context;Landroid/net/Uri;Lcom/google/android/gms/ads/internal/overlay/zzz;Lcom/google/android/gms/ads/internal/overlay/zzx;)Z

    move-result p0

    return p0

    .line 3
    :cond_b
    :try_start_b
    invoke-virtual {p1}, Landroid/content/Intent;->toURI()Ljava/lang/String;

    move-result-object p4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Launching an intent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Lcom/google/android/gms/ads/internal/util/zze;->k(Ljava/lang/String;)V

    .line 4
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->r()Lcom/google/android/gms/ads/internal/util/zzs;

    invoke-static {p0, p1}, Lcom/google/android/gms/ads/internal/util/zzs;->q(Landroid/content/Context;Landroid/content/Intent;)V

    if-eqz p2, :cond_2e

    .line 5
    invoke-interface {p2}, Lcom/google/android/gms/ads/internal/overlay/zzz;->e()V

    :cond_2e
    const/4 p0, 0x1

    if-eqz p3, :cond_34

    .line 6
    invoke-interface {p3, p0}, Lcom/google/android/gms/ads/internal/overlay/zzx;->S(Z)V
    :try_end_34
    .catch Landroid/content/ActivityNotFoundException; {:try_start_b .. :try_end_34} :catch_35

    :cond_34
    return p0

    :catch_35
    move-exception p0

    .line 7
    invoke-virtual {p0}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p0

    .line 8
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzbza;->g(Ljava/lang/String;)V

    const/4 p0, 0x0

    if-eqz p3, :cond_43

    .line 9
    invoke-interface {p3, p0}, Lcom/google/android/gms/ads/internal/overlay/zzx;->S(Z)V

    :cond_43
    return p0
.end method

.method public static final b(Landroid/content/Context;Lcom/google/android/gms/ads/internal/overlay/zzc;Lcom/google/android/gms/ads/internal/overlay/zzz;Lcom/google/android/gms/ads/internal/overlay/zzx;)Z
    .registers 10

    const/4 v0, 0x0

    if-nez p1, :cond_9

    const-string p0, "No intent data for launcher overlay."

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzbza;->g(Ljava/lang/String;)V

    return v0

    .line 2
    :cond_9
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzbar;->c(Landroid/content/Context;)V

    iget-object v1, p1, Lcom/google/android/gms/ads/internal/overlay/zzc;->v:Landroid/content/Intent;

    if-eqz v1, :cond_17

    iget-boolean p1, p1, Lcom/google/android/gms/ads/internal/overlay/zzc;->x:Z

    .line 3
    invoke-static {p0, v1, p2, p3, p1}, Lcom/google/android/gms/ads/internal/overlay/zza;->a(Landroid/content/Context;Landroid/content/Intent;Lcom/google/android/gms/ads/internal/overlay/zzz;Lcom/google/android/gms/ads/internal/overlay/zzx;Z)Z

    move-result p0

    return p0

    :cond_17
    new-instance v1, Landroid/content/Intent;

    .line 4
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iget-object v2, p1, Lcom/google/android/gms/ads/internal/overlay/zzc;->p:Ljava/lang/String;

    .line 5
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2a

    const-string p0, "Open GMSG did not contain a URL."

    .line 6
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzbza;->g(Ljava/lang/String;)V

    return v0

    :cond_2a
    iget-object v2, p1, Lcom/google/android/gms/ads/internal/overlay/zzc;->q:Ljava/lang/String;

    .line 7
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3e

    iget-object v2, p1, Lcom/google/android/gms/ads/internal/overlay/zzc;->p:Ljava/lang/String;

    .line 8
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p1, Lcom/google/android/gms/ads/internal/overlay/zzc;->q:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_47

    .line 9
    :cond_3e
    iget-object v2, p1, Lcom/google/android/gms/ads/internal/overlay/zzc;->p:Ljava/lang/String;

    .line 10
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    :goto_47
    const-string v2, "android.intent.action.VIEW"

    .line 11
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p1, Lcom/google/android/gms/ads/internal/overlay/zzc;->r:Ljava/lang/String;

    .line 12
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_59

    iget-object v2, p1, Lcom/google/android/gms/ads/internal/overlay/zzc;->r:Ljava/lang/String;

    .line 13
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_59
    iget-object v2, p1, Lcom/google/android/gms/ads/internal/overlay/zzc;->s:Ljava/lang/String;

    .line 14
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_85

    iget-object v2, p1, Lcom/google/android/gms/ads/internal/overlay/zzc;->s:Ljava/lang/String;

    const-string v4, "/"

    const/4 v5, 0x2

    .line 15
    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    .line 16
    array-length v4, v2

    if-ge v4, v5, :cond_7e

    iget-object p0, p1, Lcom/google/android/gms/ads/internal/overlay/zzc;->s:Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "Could not parse component name from open GMSG: "

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 17
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzbza;->g(Ljava/lang/String;)V

    return v0

    .line 18
    :cond_7e
    aget-object v4, v2, v0

    aget-object v2, v2, v3

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_85
    iget-object v2, p1, Lcom/google/android/gms/ads/internal/overlay/zzc;->t:Ljava/lang/String;

    .line 19
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_9a

    .line 20
    :try_start_8d
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_91
    .catch Ljava/lang/NumberFormatException; {:try_start_8d .. :try_end_91} :catch_92

    goto :goto_97

    :catch_92
    const-string v2, "Could not parse intent flags."

    .line 21
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzbza;->g(Ljava/lang/String;)V

    .line 22
    :goto_97
    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_9a
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbar;->c4:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 23
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v0

    .line 24
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_b7

    const/high16 v0, 0x10000000

    .line 25
    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v0, "android.support.customtabs.extra.user_opt_out"

    .line 26
    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_cf

    .line 27
    :cond_b7
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbar;->b4:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 28
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v0

    .line 29
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_cf

    .line 30
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->r()Lcom/google/android/gms/ads/internal/util/zzs;

    invoke-static {p0, v1}, Lcom/google/android/gms/ads/internal/util/zzs;->L(Landroid/content/Context;Landroid/content/Intent;)V

    .line 31
    :cond_cf
    :goto_cf
    iget-boolean p1, p1, Lcom/google/android/gms/ads/internal/overlay/zzc;->x:Z

    .line 32
    invoke-static {p0, v1, p2, p3, p1}, Lcom/google/android/gms/ads/internal/overlay/zza;->a(Landroid/content/Context;Landroid/content/Intent;Lcom/google/android/gms/ads/internal/overlay/zzz;Lcom/google/android/gms/ads/internal/overlay/zzx;Z)Z

    move-result p0

    return p0
.end method

.method private static final c(Landroid/content/Context;Landroid/net/Uri;Lcom/google/android/gms/ads/internal/overlay/zzz;Lcom/google/android/gms/ads/internal/overlay/zzx;)Z
    .registers 5

    .line 1
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->r()Lcom/google/android/gms/ads/internal/util/zzs;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/android/gms/ads/internal/util/zzs;->J(Landroid/content/Context;Landroid/net/Uri;)I

    move-result p0

    if-eqz p2, :cond_17

    .line 2
    invoke-interface {p2}, Lcom/google/android/gms/ads/internal/overlay/zzz;->e()V
    :try_end_d
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_d} :catch_e

    goto :goto_17

    :catch_e
    move-exception p0

    .line 3
    invoke-virtual {p0}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p0

    .line 4
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzbza;->g(Ljava/lang/String;)V

    const/4 p0, 0x6

    :cond_17
    :goto_17
    if-eqz p3, :cond_1c

    .line 5
    invoke-interface {p3, p0}, Lcom/google/android/gms/ads/internal/overlay/zzx;->z(I)V

    :cond_1c
    const/4 p1, 0x5

    if-eq p0, p1, :cond_21

    const/4 p0, 0x0

    return p0

    :cond_21
    const/4 p0, 0x1

    return p0
.end method
