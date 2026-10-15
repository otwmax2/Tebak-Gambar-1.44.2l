###### Class com.google.android.gms.internal.ads.zzebn (com.google.android.gms.internal.ads.zzebn)
.class public final Lcom/google/android/gms/internal/ads/zzebn;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzeba;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/google/android/gms/internal/ads/zzcny;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzcny;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzebn;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzebn;->b:Lcom/google/android/gms/internal/ads/zzcny;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/zzeyo;Lcom/google/android/gms/internal/ads/zzeyc;Lcom/google/android/gms/internal/ads/zzeaw;)V
    .registers 12
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

    iget-object v0, p3, Lcom/google/android/gms/internal/ads/zzeaw;->b:Ljava/lang/Object;

    .line 2
    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/ads/zzbpc;

    iget-object v2, p2, Lcom/google/android/gms/internal/ads/zzeyc;->V:Ljava/lang/String;

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzeyc;->w:Lorg/json/JSONObject;

    .line 3
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzeyo;->a:Lcom/google/android/gms/internal/ads/zzeyl;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzeyl;->a:Lcom/google/android/gms/internal/ads/zzeyx;

    iget-object v4, p1, Lcom/google/android/gms/internal/ads/zzeyx;->d:Lcom/google/android/gms/ads/internal/client/zzl;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzebn;->a:Landroid/content/Context;

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->Q4(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v5

    .line 5
    new-instance v6, Lcom/google/android/gms/internal/ads/zzebm;

    const/4 p1, 0x0

    .line 6
    invoke-direct {v6, p3, p1}, Lcom/google/android/gms/internal/ads/zzebm;-><init>(Lcom/google/android/gms/internal/ads/zzeaw;Lcom/google/android/gms/internal/ads/zzebl;)V

    iget-object p1, p3, Lcom/google/android/gms/internal/ads/zzeaw;->c:Lcom/google/android/gms/internal/ads/zzcvy;

    move-object v7, p1

    check-cast v7, Lcom/google/android/gms/internal/ads/zzbnl;

    .line 7
    invoke-interface/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzbpc;->D5(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/ads/internal/client/zzl;Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzbon;Lcom/google/android/gms/internal/ads/zzbnl;)V
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_30} :catch_31

    return-void

    :catch_31
    move-exception p1

    const-string p2, "Remote exception loading an app open RTB ad"

    .line 8
    invoke-static {p2, p1}, Lcom/google/android/gms/ads/internal/util/zze;->l(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance p2, Lcom/google/android/gms/internal/ads/zzezc;

    .line 9
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
    new-instance v0, Lcom/google/android/gms/internal/ads/zzecz;

    iget-object v1, p3, Lcom/google/android/gms/internal/ads/zzeaw;->b:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzbpc;

    sget-object v2, Lcom/google/android/gms/ads/AdFormat;->u:Lcom/google/android/gms/ads/AdFormat;

    invoke-direct {v0, p2, v1, v2}, Lcom/google/android/gms/internal/ads/zzecz;-><init>(Lcom/google/android/gms/internal/ads/zzeyc;Lcom/google/android/gms/internal/ads/zzbpc;Lcom/google/android/gms/ads/AdFormat;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzebn;->b:Lcom/google/android/gms/internal/ads/zzcny;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzcrb;

    iget-object v3, p3, Lcom/google/android/gms/internal/ads/zzeaw;->a:Ljava/lang/String;

    invoke-direct {v2, p1, p2, v3}, Lcom/google/android/gms/internal/ads/zzcrb;-><init>(Lcom/google/android/gms/internal/ads/zzeyo;Lcom/google/android/gms/internal/ads/zzeyc;Ljava/lang/String;)V

    new-instance p1, Lcom/google/android/gms/internal/ads/zzdcz;

    const/4 v3, 0x0

    invoke-direct {p1, v0, v3}, Lcom/google/android/gms/internal/ads/zzdcz;-><init>(Lcom/google/android/gms/internal/ads/zzdee;Lcom/google/android/gms/internal/ads/zzcei;)V

    new-instance v3, Lcom/google/android/gms/internal/ads/zzcnw;

    .line 2
    iget p2, p2, Lcom/google/android/gms/internal/ads/zzeyc;->b0:I

    invoke-direct {v3, p2}, Lcom/google/android/gms/internal/ads/zzcnw;-><init>(I)V

    .line 3
    invoke-virtual {v1, v2, p1, v3}, Lcom/google/android/gms/internal/ads/zzcny;->b(Lcom/google/android/gms/internal/ads/zzcrb;Lcom/google/android/gms/internal/ads/zzdcz;Lcom/google/android/gms/internal/ads/zzcnw;)Lcom/google/android/gms/internal/ads/zzcnv;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcqn;->b()Lcom/google/android/gms/internal/ads/zzcvg;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzecz;->b(Lcom/google/android/gms/internal/ads/zzcvg;)V

    iget-object p2, p3, Lcom/google/android/gms/internal/ads/zzeaw;->c:Lcom/google/android/gms/internal/ads/zzcvy;

    .line 5
    check-cast p2, Lcom/google/android/gms/internal/ads/zzecq;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcqn;->f()Lcom/google/android/gms/internal/ads/zzefs;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/ads/zzecq;->Ta(Lcom/google/android/gms/internal/ads/zzbnl;)V

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcnv;->h()Lcom/google/android/gms/internal/ads/zzcoe;

    move-result-object p1

    return-object p1
.end method
