###### Class com.google.android.gms.internal.ads.zzcuh (com.google.android.gms.internal.ads.zzcuh)
.class public final Lcom/google/android/gms/internal/ads/zzcuh;
.super Lcom/google/android/gms/ads/internal/client/zzdm;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field private final o:Ljava/lang/String;

.field private final p:Ljava/lang/String;

.field private final q:Ljava/lang/String;

.field private final r:Ljava/lang/String;

.field private final s:Ljava/util/List;

.field private final t:J

.field private final u:Ljava/lang/String;

.field private final v:Lcom/google/android/gms/internal/ads/zzeay;

.field private final w:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzeyc;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzeay;Lcom/google/android/gms/internal/ads/zzeyf;Ljava/lang/String;)V
    .registers 8

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/client/zzdm;-><init>()V

    const/4 v0, 0x0

    if-nez p1, :cond_8

    move-object v1, v0

    goto :goto_a

    .line 2
    :cond_8
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzeyc;->c0:Ljava/lang/String;

    .line 3
    :goto_a
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzcuh;->p:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzcuh;->q:Ljava/lang/String;

    if-nez p4, :cond_12

    move-object p5, v0

    goto :goto_14

    .line 4
    :cond_12
    iget-object p5, p4, Lcom/google/android/gms/internal/ads/zzeyf;->b:Ljava/lang/String;

    .line 5
    :goto_14
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzcuh;->r:Ljava/lang/String;

    const-string p5, "com.google.android.gms.ads.mediation.customevent.CustomEventAdapter"

    .line 6
    invoke-virtual {p5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-nez p5, :cond_26

    const-string p5, "com.google.ads.mediation.customevent.CustomEventAdapter"

    .line 7
    invoke-virtual {p5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_30

    .line 8
    :cond_26
    :try_start_26
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzeyc;->w:Lorg/json/JSONObject;

    const-string p5, "class_name"

    invoke-virtual {p1, p5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_2e
    .catch Lorg/json/JSONException; {:try_start_26 .. :try_end_2e} :catch_2f

    goto :goto_30

    :catch_2f
    nop

    :cond_30
    :goto_30
    if-eqz v0, :cond_33

    move-object p2, v0

    :cond_33
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcuh;->o:Ljava/lang/String;

    .line 9
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzeay;->c()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcuh;->s:Ljava/util/List;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcuh;->v:Lcom/google/android/gms/internal/ads/zzeay;

    .line 10
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->b()Lcom/google/android/gms/common/util/Clock;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/common/util/Clock;->a()J

    move-result-wide p1

    const-wide/16 v0, 0x3e8

    div-long/2addr p1, v0

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzcuh;->t:J

    .line 11
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbar;->s6:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 12
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object p1

    .line 13
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_63

    if-eqz p4, :cond_63

    iget-object p1, p4, Lcom/google/android/gms/internal/ads/zzeyf;->j:Landroid/os/Bundle;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcuh;->w:Landroid/os/Bundle;

    goto :goto_6a

    .line 14
    :cond_63
    new-instance p1, Landroid/os/Bundle;

    .line 15
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcuh;->w:Landroid/os/Bundle;

    .line 16
    :goto_6a
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbar;->w8:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 17
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object p1

    .line 18
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_8a

    if-eqz p4, :cond_8a

    iget-object p1, p4, Lcom/google/android/gms/internal/ads/zzeyf;->h:Ljava/lang/String;

    .line 19
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_87

    goto :goto_8a

    :cond_87
    iget-object p1, p4, Lcom/google/android/gms/internal/ads/zzeyf;->h:Ljava/lang/String;

    goto :goto_8c

    :cond_8a
    :goto_8a
    const-string p1, ""

    :goto_8c
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcuh;->u:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzcuh;->t:J

    return-wide v0
.end method

.method public final b()Landroid/os/Bundle;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcuh;->w:Landroid/os/Bundle;

    return-object v0
.end method

.method public final c()Lcom/google/android/gms/ads/internal/client/zzu;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcuh;->v:Lcom/google/android/gms/internal/ads/zzeay;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzeay;->a()Lcom/google/android/gms/ads/internal/client/zzu;

    move-result-object v0

    return-object v0

    :cond_9
    const/4 v0, 0x0

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcuh;->u:Ljava/lang/String;

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcuh;->o:Ljava/lang/String;

    return-object v0
.end method

.method public final f()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcuh;->q:Ljava/lang/String;

    return-object v0
.end method

.method public final g()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcuh;->p:Ljava/lang/String;

    return-object v0
.end method

.method public final h()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcuh;->s:Ljava/util/List;

    return-object v0
.end method

.method public final i()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcuh;->r:Ljava/lang/String;

    return-object v0
.end method
