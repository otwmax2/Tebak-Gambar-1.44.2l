###### Class com.google.android.gms.internal.ads.zzelq (com.google.android.gms.internal.ads.zzelq)
.class public final Lcom/google/android/gms/internal/ads/zzelq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzepn;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/zzfuu;

.field private final b:Lcom/google/android/gms/internal/ads/zzdni;

.field private final c:Ljava/lang/String;

.field private final d:Lcom/google/android/gms/internal/ads/zzeyx;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzfuu;Lcom/google/android/gms/internal/ads/zzdni;Lcom/google/android/gms/internal/ads/zzeyx;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzelq;->a:Lcom/google/android/gms/internal/ads/zzfuu;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzelq;->b:Lcom/google/android/gms/internal/ads/zzdni;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzelq;->d:Lcom/google/android/gms/internal/ads/zzeyx;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzelq;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method final synthetic a()Lcom/google/android/gms/internal/ads/zzelr;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzelq;->b:Lcom/google/android/gms/internal/ads/zzdni;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzelq;->d:Lcom/google/android/gms/internal/ads/zzeyx;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzeyx;->f:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzelq;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzdni;->b(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzelq;->b:Lcom/google/android/gms/internal/ads/zzdni;

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdni;->a()Lorg/json/JSONObject;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/zzelr;

    invoke-direct {v2, v0, v1}, Lcom/google/android/gms/internal/ads/zzelr;-><init>(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    return-object v2
.end method

.method public final zza()I
    .registers 2

    const/16 v0, 0x11

    return v0
.end method

.method public final zzb()Lcom/google/android/gms/internal/ads/zzfut;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzelq;->a:Lcom/google/android/gms/internal/ads/zzfuu;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzelp;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzelp;-><init>(Lcom/google/android/gms/internal/ads/zzelq;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzfuu;->e(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/zzfut;

    move-result-object v0

    return-object v0
.end method

###### Class com.google.android.gms.internal.ads.zzelp (com.google.android.gms.internal.ads.zzelp)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzelp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/internal/ads/zzelq;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzelq;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzelp;->a:Lcom/google/android/gms/internal/ads/zzelq;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzelp;->a:Lcom/google/android/gms/internal/ads/zzelq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzelq;->a()Lcom/google/android/gms/internal/ads/zzelr;

    move-result-object v0

    return-object v0
.end method
