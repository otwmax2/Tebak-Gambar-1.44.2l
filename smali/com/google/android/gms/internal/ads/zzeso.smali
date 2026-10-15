###### Class com.google.android.gms.internal.ads.zzeso (com.google.android.gms.internal.ads.zzeso)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzeso;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzepn;


# static fields
.field public static final synthetic a:Lcom/google/android/gms/internal/ads/zzeso;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzeso;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzeso;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzeso;->a:Lcom/google/android/gms/internal/ads/zzeso;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zza()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final zzb()Lcom/google/android/gms/internal/ads/zzfut;
    .registers 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzesp;->a:Lcom/google/android/gms/internal/ads/zzesp;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfuj;->h(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfut;

    move-result-object v0

    return-object v0
.end method

###### Class com.google.android.gms.internal.ads.zzesp (com.google.android.gms.internal.ads.zzesp)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzesp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzepm;


# static fields
.field public static final synthetic a:Lcom/google/android/gms/internal/ads/zzesp;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzesp;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzesp;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzesp;->a:Lcom/google/android/gms/internal/ads/zzesp;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .registers 4

    check-cast p1, Lorg/json/JSONObject;

    :try_start_2
    const-string v0, "sdk_env"

    .line 1
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "container_version"

    const v1, 0xbdfcb8

    .line 2
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_10
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_10} :catch_10

    :catch_10
    return-void
.end method
