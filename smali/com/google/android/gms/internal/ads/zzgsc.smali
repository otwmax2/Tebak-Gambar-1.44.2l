###### Class com.google.android.gms.internal.ads.zzgsc (com.google.android.gms.internal.ads.zzgsc)
.class final Lcom/google/android/gms/internal/ads/zzgsc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# static fields
.field private static final a:Lcom/google/android/gms/internal/ads/zzgsb;

.field private static final b:Lcom/google/android/gms/internal/ads/zzgsb;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    :try_start_0
    const-string v0, "com.google.protobuf.NewInstanceSchemaFull"

    .line 1
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    .line 2
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgsb;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_15} :catch_16

    goto :goto_17

    :catch_16
    const/4 v0, 0x0

    :goto_17
    sput-object v0, Lcom/google/android/gms/internal/ads/zzgsc;->a:Lcom/google/android/gms/internal/ads/zzgsb;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgsb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzgsb;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgsc;->b:Lcom/google/android/gms/internal/ads/zzgsb;

    return-void
.end method

.method static a()Lcom/google/android/gms/internal/ads/zzgsb;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgsc;->a:Lcom/google/android/gms/internal/ads/zzgsb;

    return-object v0
.end method

.method static b()Lcom/google/android/gms/internal/ads/zzgsb;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgsc;->b:Lcom/google/android/gms/internal/ads/zzgsb;

    return-object v0
.end method
