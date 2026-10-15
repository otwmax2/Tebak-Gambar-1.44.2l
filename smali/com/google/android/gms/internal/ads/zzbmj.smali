###### Class com.google.android.gms.internal.ads.zzbmj (com.google.android.gms.internal.ads.zzbmj)
.class public final Lcom/google/android/gms/internal/ads/zzbmj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzblv;


# annotations
.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/zzblx;

.field private final b:Lcom/google/android/gms/internal/ads/zzbly;

.field private final c:Lcom/google/android/gms/internal/ads/zzblr;

.field private final d:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzblr;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbly;Lcom/google/android/gms/internal/ads/zzblx;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbmj;->c:Lcom/google/android/gms/internal/ads/zzblr;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbmj;->d:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbmj;->b:Lcom/google/android/gms/internal/ads/zzbly;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzbmj;->a:Lcom/google/android/gms/internal/ads/zzblx;

    return-void
.end method

.method static bridge synthetic b(Lcom/google/android/gms/internal/ads/zzbmj;)Lcom/google/android/gms/internal/ads/zzblx;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzbmj;->a:Lcom/google/android/gms/internal/ads/zzblx;

    return-object p0
.end method

.method static bridge synthetic d(Lcom/google/android/gms/internal/ads/zzbmj;Lcom/google/android/gms/internal/ads/zzbll;Lcom/google/android/gms/internal/ads/zzbls;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzbzs;)V
    .registers 8

    .line 1
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->r()Lcom/google/android/gms/ads/internal/util/zzs;

    .line 2
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbho;->o:Lcom/google/android/gms/internal/ads/zzbid;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzbmi;

    invoke-direct {v2, p0, p1, p4}, Lcom/google/android/gms/internal/ads/zzbmi;-><init>(Lcom/google/android/gms/internal/ads/zzbmj;Lcom/google/android/gms/internal/ads/zzbll;Lcom/google/android/gms/internal/ads/zzbzs;)V

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzbid;->c(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbic;)V

    .line 4
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "id"

    .line 5
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "args"

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbmj;->b:Lcom/google/android/gms/internal/ads/zzbly;

    .line 6
    invoke-interface {v2, p3}, Lcom/google/android/gms/internal/ads/zzbly;->c(Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p3

    invoke-virtual {v1, v0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzbmj;->d:Ljava/lang/String;

    .line 7
    invoke-interface {p2, p0, v1}, Lcom/google/android/gms/internal/ads/zzbkv;->Z0(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2f} :catch_30

    return-void

    :catch_30
    move-exception p0

    .line 8
    :try_start_31
    invoke-virtual {p4, p0}, Lcom/google/android/gms/internal/ads/zzbzs;->d(Ljava/lang/Throwable;)Z

    const-string p2, "Unable to invokeJavascript"

    .line 9
    invoke-static {p2, p0}, Lcom/google/android/gms/internal/ads/zzbza;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_39
    .catchall {:try_start_31 .. :try_end_39} :catchall_3d

    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbll;->g()V

    return-void

    :catchall_3d
    move-exception p0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbll;->g()V

    .line 11
    throw p0
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
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzbmj;->c(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfut;

    move-result-object p1

    return-object p1
.end method

.method public final c(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfut;
    .registers 5

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbzs;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbzs;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbmj;->c:Lcom/google/android/gms/internal/ads/zzblr;

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzblr;->b(Lcom/google/android/gms/internal/ads/zzapw;)Lcom/google/android/gms/internal/ads/zzbll;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/zzbmg;

    invoke-direct {v2, p0, v1, p1, v0}, Lcom/google/android/gms/internal/ads/zzbmg;-><init>(Lcom/google/android/gms/internal/ads/zzbmj;Lcom/google/android/gms/internal/ads/zzbll;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzbzs;)V

    new-instance p1, Lcom/google/android/gms/internal/ads/zzbmh;

    invoke-direct {p1, p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzbmh;-><init>(Lcom/google/android/gms/internal/ads/zzbmj;Lcom/google/android/gms/internal/ads/zzbzs;Lcom/google/android/gms/internal/ads/zzbll;)V

    .line 3
    invoke-virtual {v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzbzz;->e(Lcom/google/android/gms/internal/ads/zzbzw;Lcom/google/android/gms/internal/ads/zzbzu;)V

    return-object v0
.end method
