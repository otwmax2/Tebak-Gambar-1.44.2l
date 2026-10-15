###### Class com.google.android.gms.internal.ads.zzdhm (com.google.android.gms.internal.ads.zzdhm)
.class public final Lcom/google/android/gms/internal/ads/zzdhm;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final o:Lcom/google/android/gms/internal/ads/zzdlf;

.field private final p:Lcom/google/android/gms/common/util/Clock;

.field private q:Lcom/google/android/gms/internal/ads/zzbfr;

.field private r:Lcom/google/android/gms/internal/ads/zzbhp;

.field s:Ljava/lang/String;

.field t:Ljava/lang/Long;

.field u:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdlf;Lcom/google/android/gms/common/util/Clock;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdhm;->o:Lcom/google/android/gms/internal/ads/zzdlf;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdhm;->p:Lcom/google/android/gms/common/util/Clock;

    return-void
.end method

.method private final e()V
    .registers 4

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdhm;->s:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdhm;->t:Ljava/lang/Long;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdhm;->u:Ljava/lang/ref/WeakReference;

    if-nez v1, :cond_a

    return-void

    :cond_a
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-nez v1, :cond_13

    return-void

    :cond_13
    const/4 v2, 0x0

    .line 2
    invoke-virtual {v1, v2}, Landroid/view/View;->setClickable(Z)V

    .line 3
    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdhm;->u:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/zzbfr;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdhm;->q:Lcom/google/android/gms/internal/ads/zzbfr;

    return-object v0
.end method

.method public final b()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdhm;->q:Lcom/google/android/gms/internal/ads/zzbfr;

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdhm;->t:Ljava/lang/Long;

    if-nez v0, :cond_a

    return-void

    :cond_a
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdhm;->e()V

    :try_start_d
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdhm;->q:Lcom/google/android/gms/internal/ads/zzbfr;

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbfr;->b()V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_12} :catch_13

    return-void

    :catch_13
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    .line 3
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzbza;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final d(Lcom/google/android/gms/internal/ads/zzbfr;)V
    .registers 5

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdhm;->q:Lcom/google/android/gms/internal/ads/zzbfr;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdhm;->r:Lcom/google/android/gms/internal/ads/zzbhp;

    const-string v1, "/unconfirmedClick"

    if-eqz v0, :cond_d

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdhm;->o:Lcom/google/android/gms/internal/ads/zzdlf;

    invoke-virtual {v2, v1, v0}, Lcom/google/android/gms/internal/ads/zzdlf;->k(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbhp;)V

    :cond_d
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdhl;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzdhl;-><init>(Lcom/google/android/gms/internal/ads/zzdhm;Lcom/google/android/gms/internal/ads/zzbfr;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdhm;->r:Lcom/google/android/gms/internal/ads/zzbhp;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdhm;->o:Lcom/google/android/gms/internal/ads/zzdlf;

    .line 2
    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzdlf;->i(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbhp;)V

    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdhm;->u:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_46

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p1, :cond_b

    goto :goto_46

    :cond_b
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdhm;->s:Ljava/lang/String;

    if-eqz p1, :cond_43

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdhm;->t:Ljava/lang/Long;

    if-eqz p1, :cond_43

    new-instance p1, Ljava/util/HashMap;

    .line 2
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdhm;->s:Ljava/lang/String;

    const-string v1, "id"

    .line 3
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdhm;->p:Lcom/google/android/gms/common/util/Clock;

    .line 4
    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->a()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdhm;->t:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "time_interval"

    .line 5
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "messageType"

    const-string v1, "onePointFiveClick"

    .line 6
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdhm;->o:Lcom/google/android/gms/internal/ads/zzdlf;

    const-string v1, "sendMessageToNativeJs"

    .line 7
    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzdlf;->g(Ljava/lang/String;Ljava/util/Map;)V

    .line 8
    :cond_43
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdhm;->e()V

    :cond_46
    :goto_46
    return-void
.end method

###### Class com.google.android.gms.internal.ads.zzdhl (com.google.android.gms.internal.ads.zzdhl)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzdhl;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbhp;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/internal/ads/zzdhm;

.field public final synthetic b:Lcom/google/android/gms/internal/ads/zzbfr;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzdhm;Lcom/google/android/gms/internal/ads/zzbfr;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdhl;->a:Lcom/google/android/gms/internal/ads/zzdhm;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdhl;->b:Lcom/google/android/gms/internal/ads/zzbfr;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/util/Map;)V
    .registers 6

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdhl;->a:Lcom/google/android/gms/internal/ads/zzdhm;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdhl;->b:Lcom/google/android/gms/internal/ads/zzbfr;

    :try_start_4
    const-string v1, "timestamp"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p1, Lcom/google/android/gms/internal/ads/zzdhm;->t:Ljava/lang/Long;
    :try_end_16
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_16} :catch_17

    goto :goto_1c

    :catch_17
    const-string v1, "Failed to call parse unconfirmedClickTimestamp."

    .line 2
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzbza;->d(Ljava/lang/String;)V

    :goto_1c
    const-string v1, "id"

    .line 3
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p1, Lcom/google/android/gms/internal/ads/zzdhm;->s:Ljava/lang/String;

    const-string p1, "asset_id"

    .line 4
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez v0, :cond_36

    const-string p1, "Received unconfirmed click but UnconfirmedClickListener is null."

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbza;->b(Ljava/lang/String;)V

    return-void

    .line 6
    :cond_36
    :try_start_36
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzbfr;->I(Ljava/lang/String;)V
    :try_end_39
    .catch Landroid/os/RemoteException; {:try_start_36 .. :try_end_39} :catch_3a

    return-void

    :catch_3a
    move-exception p1

    const-string p2, "#007 Could not call remote method."

    .line 7
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzbza;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
