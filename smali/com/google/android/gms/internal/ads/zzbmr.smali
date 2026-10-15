###### Class com.google.android.gms.internal.ads.zzbmr (com.google.android.gms.internal.ads.zzbmr)
.class public final Lcom/google/android/gms/internal/ads/zzbmr;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzftq;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/zzblx;

.field private final b:Lcom/google/android/gms/internal/ads/zzbly;

.field private final c:Ljava/lang/String;

.field private final d:Lcom/google/android/gms/internal/ads/zzfut;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzfut;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbly;Lcom/google/android/gms/internal/ads/zzblx;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbmr;->d:Lcom/google/android/gms/internal/ads/zzfut;

    const-string p1, "google.afma.activeView.handleUpdate"

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbmr;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbmr;->b:Lcom/google/android/gms/internal/ads/zzbly;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzbmr;->a:Lcom/google/android/gms/internal/ads/zzblx;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfut;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzbmr;->c(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfut;

    move-result-object p1

    return-object p1
.end method

.method final synthetic b(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzbls;)Lcom/google/android/gms/internal/ads/zzfut;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbzs;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbzs;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->r()Lcom/google/android/gms/ads/internal/util/zzs;

    .line 3
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4
    sget-object v2, Lcom/google/android/gms/internal/ads/zzbho;->o:Lcom/google/android/gms/internal/ads/zzbid;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzbmq;

    invoke-direct {v3, p0, v0}, Lcom/google/android/gms/internal/ads/zzbmq;-><init>(Lcom/google/android/gms/internal/ads/zzbmr;Lcom/google/android/gms/internal/ads/zzbzs;)V

    invoke-virtual {v2, v1, v3}, Lcom/google/android/gms/internal/ads/zzbid;->c(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbic;)V

    .line 5
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "id"

    .line 6
    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 7
    check-cast p1, Lorg/json/JSONObject;

    const-string v1, "args"

    .line 8
    invoke-virtual {v2, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbmr;->c:Ljava/lang/String;

    .line 9
    invoke-interface {p2, p1, v2}, Lcom/google/android/gms/internal/ads/zzbkv;->Z0(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-object v0
.end method

.method public final c(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfut;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbmr;->d:Lcom/google/android/gms/internal/ads/zzfut;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbmp;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzbmp;-><init>(Lcom/google/android/gms/internal/ads/zzbmr;Ljava/lang/Object;)V

    sget-object p1, Lcom/google/android/gms/internal/ads/zzbzn;->f:Lcom/google/android/gms/internal/ads/zzfuu;

    .line 2
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzfuj;->m(Lcom/google/android/gms/internal/ads/zzfut;Lcom/google/android/gms/internal/ads/zzftq;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzfut;

    move-result-object p1

    return-object p1
.end method

###### Class com.google.android.gms.internal.ads.zzbmp (com.google.android.gms.internal.ads.zzbmp)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzbmp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzftq;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/internal/ads/zzbmr;

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzbmr;Ljava/lang/Object;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbmp;->a:Lcom/google/android/gms/internal/ads/zzbmr;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbmp;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfut;
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbmp;->a:Lcom/google/android/gms/internal/ads/zzbmr;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbmp;->b:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbls;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzbmr;->b(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzbls;)Lcom/google/android/gms/internal/ads/zzfut;

    move-result-object p1

    return-object p1
.end method
