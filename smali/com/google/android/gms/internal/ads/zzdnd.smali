###### Class com.google.android.gms.internal.ads.zzdnd (com.google.android.gms.internal.ads.zzdnd)
.class public final Lcom/google/android/gms/internal/ads/zzdnd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/zzezq;

.field private final b:Lcom/google/android/gms/internal/ads/zzdna;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzezq;Lcom/google/android/gms/internal/ads/zzdna;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdnd;->a:Lcom/google/android/gms/internal/ads/zzezq;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdnd;->b:Lcom/google/android/gms/internal/ads/zzdna;

    return-void
.end method


# virtual methods
.method final a()Lcom/google/android/gms/internal/ads/zzbnf;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdnd;->a:Lcom/google/android/gms/internal/ads/zzezq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzezq;->b()Lcom/google/android/gms/internal/ads/zzbnf;

    move-result-object v0

    if-eqz v0, :cond_9

    return-object v0

    :cond_9
    const-string v0, "Unexpected call to adapter creator."

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbza;->g(Ljava/lang/String;)V

    .line 3
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method public final b(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzbpc;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdnd;->a()Lcom/google/android/gms/internal/ads/zzbnf;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzbnf;->D(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzbpc;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdnd;->b:Lcom/google/android/gms/internal/ads/zzdna;

    .line 2
    invoke-virtual {v1, p1, v0}, Lcom/google/android/gms/internal/ads/zzdna;->e(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbpc;)V

    return-object v0
.end method

.method public final c(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/zzezs;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzezc;
        }
    .end annotation

    const-string v0, "com.google.android.gms.ads.mediation.customevent.CustomEventAdapter"

    .line 1
    :try_start_2
    new-instance v1, Lcom/google/android/gms/internal/ads/zzezs;

    const-string v2, "com.google.ads.mediation.admob.AdMobAdapter"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    new-instance p2, Lcom/google/android/gms/internal/ads/zzbof;

    new-instance v0, Lcom/google/ads/mediation/admob/AdMobAdapter;

    invoke-direct {v0}, Lcom/google/ads/mediation/admob/AdMobAdapter;-><init>()V

    .line 2
    invoke-direct {p2, v0}, Lcom/google/android/gms/internal/ads/zzbof;-><init>(Lcom/google/android/gms/ads/mediation/MediationAdapter;)V

    goto :goto_67

    :cond_17
    const-string v2, "com.google.ads.mediation.admob.AdMobCustomTabsAdapter"

    .line 3
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    new-instance p2, Lcom/google/android/gms/internal/ads/zzbof;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbpu;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbpu;-><init>()V

    .line 4
    invoke-direct {p2, v0}, Lcom/google/android/gms/internal/ads/zzbof;-><init>(Lcom/google/android/gms/ads/mediation/MediationAdapter;)V

    goto :goto_67

    .line 5
    :cond_2a
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdnd;->a()Lcom/google/android/gms/internal/ads/zzbnf;

    move-result-object v2

    .line 6
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_32
    .catchall {:try_start_2 .. :try_end_32} :catchall_70

    const-string v4, "com.google.ads.mediation.customevent.CustomEventAdapter"

    if-nez v3, :cond_3c

    .line 7
    :try_start_36
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_3a
    .catchall {:try_start_36 .. :try_end_3a} :catchall_70

    if-eqz v3, :cond_63

    :cond_3c
    :try_start_3c
    const-string v3, "class_name"

    .line 8
    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 9
    invoke-interface {v2, p2}, Lcom/google/android/gms/internal/ads/zzbnf;->s(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4d

    .line 10
    invoke-interface {v2, v0}, Lcom/google/android/gms/internal/ads/zzbnf;->u(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzbni;

    move-result-object p2

    goto :goto_67

    .line 11
    :cond_4d
    invoke-interface {v2, p2}, Lcom/google/android/gms/internal/ads/zzbnf;->O(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_58

    .line 12
    invoke-interface {v2, p2}, Lcom/google/android/gms/internal/ads/zzbnf;->u(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzbni;

    move-result-object p2

    goto :goto_67

    .line 13
    :cond_58
    invoke-interface {v2, v4}, Lcom/google/android/gms/internal/ads/zzbnf;->u(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzbni;

    move-result-object p2
    :try_end_5c
    .catch Lorg/json/JSONException; {:try_start_3c .. :try_end_5c} :catch_5d
    .catchall {:try_start_3c .. :try_end_5c} :catchall_70

    goto :goto_67

    :catch_5d
    move-exception p2

    :try_start_5e
    const-string v0, "Invalid custom event."

    .line 14
    invoke-static {v0, p2}, Lcom/google/android/gms/internal/ads/zzbza;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 15
    :cond_63
    invoke-interface {v2, p1}, Lcom/google/android/gms/internal/ads/zzbnf;->u(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzbni;

    move-result-object p2

    .line 16
    :goto_67
    invoke-direct {v1, p2}, Lcom/google/android/gms/internal/ads/zzezs;-><init>(Lcom/google/android/gms/internal/ads/zzbni;)V
    :try_end_6a
    .catchall {:try_start_5e .. :try_end_6a} :catchall_70

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzdnd;->b:Lcom/google/android/gms/internal/ads/zzdna;

    .line 17
    invoke-virtual {p2, p1, v1}, Lcom/google/android/gms/internal/ads/zzdna;->d(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzezs;)V

    return-object v1

    :catchall_70
    move-exception p2

    .line 18
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbar;->A8:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 19
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v0

    .line 20
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_89

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdnd;->b:Lcom/google/android/gms/internal/ads/zzdna;

    const/4 v1, 0x0

    .line 21
    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzdna;->d(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzezs;)V

    :cond_89
    new-instance p1, Lcom/google/android/gms/internal/ads/zzezc;

    .line 22
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzezc;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final d()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdnd;->a:Lcom/google/android/gms/internal/ads/zzezq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzezq;->b()Lcom/google/android/gms/internal/ads/zzbnf;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0
.end method
