###### Class com.google.android.gms.internal.ads.zzedu (com.google.android.gms.internal.ads.zzedu)
.class public final Lcom/google/android/gms/internal/ads/zzedu;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzeba;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/google/android/gms/internal/ads/zzdes;

.field private c:Lcom/google/android/gms/internal/ads/zzbnu;

.field private final d:Lcom/google/android/gms/internal/ads/zzbzg;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzdes;Lcom/google/android/gms/internal/ads/zzbzg;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzedu;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzedu;->b:Lcom/google/android/gms/internal/ads/zzdes;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzedu;->d:Lcom/google/android/gms/internal/ads/zzbzg;

    return-void
.end method

.method static bridge synthetic c(Lcom/google/android/gms/internal/ads/zzedu;Lcom/google/android/gms/internal/ads/zzbnu;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzedu;->c:Lcom/google/android/gms/internal/ads/zzbnu;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/zzeyo;Lcom/google/android/gms/internal/ads/zzeyc;Lcom/google/android/gms/internal/ads/zzeaw;)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzezc;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p3, Lcom/google/android/gms/internal/ads/zzeaw;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbpc;

    iget-object v1, p2, Lcom/google/android/gms/internal/ads/zzeyc;->a0:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzbpc;->K9(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzedu;->d:Lcom/google/android/gms/internal/ads/zzbzg;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzbzg;->q:I

    .line 2
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbar;->y1:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v1

    .line 4
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_47

    iget-object v0, p3, Lcom/google/android/gms/internal/ads/zzeaw;->b:Ljava/lang/Object;

    .line 5
    move-object v3, v0

    check-cast v3, Lcom/google/android/gms/internal/ads/zzbpc;

    iget-object v4, p2, Lcom/google/android/gms/internal/ads/zzeyc;->V:Ljava/lang/String;

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzeyc;->w:Lorg/json/JSONObject;

    .line 6
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzeyo;->a:Lcom/google/android/gms/internal/ads/zzeyl;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzeyl;->a:Lcom/google/android/gms/internal/ads/zzeyx;

    iget-object v6, p1, Lcom/google/android/gms/internal/ads/zzeyx;->d:Lcom/google/android/gms/ads/internal/client/zzl;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzedu;->a:Landroid/content/Context;

    .line 7
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->Q4(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v7

    new-instance v8, Lcom/google/android/gms/internal/ads/zzedt;

    invoke-direct {v8, p0, p3, v2}, Lcom/google/android/gms/internal/ads/zzedt;-><init>(Lcom/google/android/gms/internal/ads/zzedu;Lcom/google/android/gms/internal/ads/zzeaw;Lcom/google/android/gms/internal/ads/zzeds;)V

    iget-object p1, p3, Lcom/google/android/gms/internal/ads/zzeaw;->c:Lcom/google/android/gms/internal/ads/zzcvy;

    move-object v9, p1

    check-cast v9, Lcom/google/android/gms/internal/ads/zzbnl;

    .line 8
    invoke-interface/range {v3 .. v9}, Lcom/google/android/gms/internal/ads/zzbpc;->r3(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/ads/internal/client/zzl;Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzbow;Lcom/google/android/gms/internal/ads/zzbnl;)V

    return-void

    :cond_47
    iget-object v0, p3, Lcom/google/android/gms/internal/ads/zzeaw;->b:Ljava/lang/Object;

    .line 9
    move-object v3, v0

    check-cast v3, Lcom/google/android/gms/internal/ads/zzbpc;

    iget-object v4, p2, Lcom/google/android/gms/internal/ads/zzeyc;->V:Ljava/lang/String;

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzeyc;->w:Lorg/json/JSONObject;

    .line 10
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object p2, p1, Lcom/google/android/gms/internal/ads/zzeyo;->a:Lcom/google/android/gms/internal/ads/zzeyl;

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzeyl;->a:Lcom/google/android/gms/internal/ads/zzeyx;

    iget-object v6, p2, Lcom/google/android/gms/internal/ads/zzeyx;->d:Lcom/google/android/gms/ads/internal/client/zzl;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzedu;->a:Landroid/content/Context;

    .line 11
    invoke-static {p2}, Lcom/google/android/gms/dynamic/ObjectWrapper;->Q4(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v7

    .line 12
    new-instance v8, Lcom/google/android/gms/internal/ads/zzedt;

    .line 13
    invoke-direct {v8, p0, p3, v2}, Lcom/google/android/gms/internal/ads/zzedt;-><init>(Lcom/google/android/gms/internal/ads/zzedu;Lcom/google/android/gms/internal/ads/zzeaw;Lcom/google/android/gms/internal/ads/zzeds;)V

    iget-object p2, p3, Lcom/google/android/gms/internal/ads/zzeaw;->c:Lcom/google/android/gms/internal/ads/zzcvy;

    move-object v9, p2

    check-cast v9, Lcom/google/android/gms/internal/ads/zzbnl;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzeyo;->a:Lcom/google/android/gms/internal/ads/zzeyl;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzeyl;->a:Lcom/google/android/gms/internal/ads/zzeyx;

    iget-object v10, p1, Lcom/google/android/gms/internal/ads/zzeyx;->i:Lcom/google/android/gms/internal/ads/zzbdl;

    .line 14
    invoke-interface/range {v3 .. v10}, Lcom/google/android/gms/internal/ads/zzbpc;->a8(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/ads/internal/client/zzl;Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzbow;Lcom/google/android/gms/internal/ads/zzbnl;Lcom/google/android/gms/internal/ads/zzbdl;)V
    :try_end_73
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_73} :catch_74

    return-void

    :catch_74
    move-exception p1

    .line 15
    new-instance p2, Lcom/google/android/gms/internal/ads/zzezc;

    .line 16
    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/zzezc;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public final bridge synthetic b(Lcom/google/android/gms/internal/ads/zzeyo;Lcom/google/android/gms/internal/ads/zzeyc;Lcom/google/android/gms/internal/ads/zzeaw;)Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzezc;,
            Lcom/google/android/gms/internal/ads/zzeek;
        }
    .end annotation

    .line 1
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzeyo;->a:Lcom/google/android/gms/internal/ads/zzeyl;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzeyl;->a:Lcom/google/android/gms/internal/ads/zzeyx;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzeyx;->g:Ljava/util/ArrayList;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzedu;->c:Lcom/google/android/gms/internal/ads/zzbnu;

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdgi;->c0(Lcom/google/android/gms/internal/ads/zzbnu;)Lcom/google/android/gms/internal/ads/zzdgi;

    move-result-object v0

    .line 4
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzeyo;->a:Lcom/google/android/gms/internal/ads/zzeyl;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzeyl;->a:Lcom/google/android/gms/internal/ads/zzeyx;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzeyx;->g:Ljava/util/ArrayList;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdgi;->M()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 6
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_55

    .line 7
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzedu;->b:Lcom/google/android/gms/internal/ads/zzdes;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzcrb;

    iget-object v3, p3, Lcom/google/android/gms/internal/ads/zzeaw;->a:Ljava/lang/String;

    invoke-direct {v2, p1, p2, v3}, Lcom/google/android/gms/internal/ads/zzcrb;-><init>(Lcom/google/android/gms/internal/ads/zzeyo;Lcom/google/android/gms/internal/ads/zzeyc;Ljava/lang/String;)V

    new-instance p1, Lcom/google/android/gms/internal/ads/zzdgu;

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzdgu;-><init>(Lcom/google/android/gms/internal/ads/zzdgi;)V

    new-instance p2, Lcom/google/android/gms/internal/ads/zzdij;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzedu;->c:Lcom/google/android/gms/internal/ads/zzbnu;

    const/4 v3, 0x0

    invoke-direct {p2, v3, v3, v0, v3}, Lcom/google/android/gms/internal/ads/zzdij;-><init>(Lcom/google/android/gms/internal/ads/zzbnr;Lcom/google/android/gms/internal/ads/zzbnq;Lcom/google/android/gms/internal/ads/zzbnu;[B)V

    .line 8
    invoke-virtual {v1, v2, p1, p2}, Lcom/google/android/gms/internal/ads/zzdes;->d(Lcom/google/android/gms/internal/ads/zzcrb;Lcom/google/android/gms/internal/ads/zzdgu;Lcom/google/android/gms/internal/ads/zzdij;)Lcom/google/android/gms/internal/ads/zzdgk;

    move-result-object p1

    iget-object p2, p3, Lcom/google/android/gms/internal/ads/zzeaw;->c:Lcom/google/android/gms/internal/ads/zzcvy;

    .line 9
    check-cast p2, Lcom/google/android/gms/internal/ads/zzecq;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcqn;->f()Lcom/google/android/gms/internal/ads/zzefs;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/ads/zzecq;->Ta(Lcom/google/android/gms/internal/ads/zzbnl;)V

    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdgl;->h()Lcom/google/android/gms/internal/ads/zzdgd;

    move-result-object p1

    return-object p1

    .line 11
    :cond_55
    new-instance p1, Lcom/google/android/gms/internal/ads/zzeek;

    const/4 p2, 0x1

    const-string p3, "No corresponding native ad listener"

    .line 12
    invoke-direct {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzeek;-><init>(ILjava/lang/String;)V

    throw p1

    .line 13
    :cond_5e
    new-instance p1, Lcom/google/android/gms/internal/ads/zzeek;

    const/4 p2, 0x2

    const-string p3, "Unified must be used for RTB."

    .line 14
    invoke-direct {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzeek;-><init>(ILjava/lang/String;)V

    throw p1
.end method
