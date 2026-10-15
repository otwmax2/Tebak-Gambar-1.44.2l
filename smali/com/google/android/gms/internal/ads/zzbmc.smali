###### Class com.google.android.gms.internal.ads.zzbmc (com.google.android.gms.internal.ads.zzbmc)
.class public final Lcom/google/android/gms/internal/ads/zzbmc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# static fields
.field private static final a:Ljava/nio/charset/Charset;

.field public static final b:Lcom/google/android/gms/internal/ads/zzblz;

.field public static final c:Lcom/google/android/gms/internal/ads/zzblx;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "UTF-8"

    .line 1
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbmc;->a:Ljava/nio/charset/Charset;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbmb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbmb;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbmc;->b:Lcom/google/android/gms/internal/ads/zzblz;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbma;->a:Lcom/google/android/gms/internal/ads/zzbma;

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbmc;->c:Lcom/google/android/gms/internal/ads/zzblx;

    return-void
.end method

.method static synthetic a(Lorg/json/JSONObject;)Ljava/io/InputStream;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbmc;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0
.end method

###### Class com.google.android.gms.internal.ads.zzbma (com.google.android.gms.internal.ads.zzbma)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzbma;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzblx;


# static fields
.field public static final synthetic a:Lcom/google/android/gms/internal/ads/zzbma;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbma;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbma;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbma;->a:Lcom/google/android/gms/internal/ads/zzbma;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lorg/json/JSONObject;)Ljava/lang/Object;
    .registers 2

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbmc;->a(Lorg/json/JSONObject;)Ljava/io/InputStream;

    move-result-object p1

    return-object p1
.end method
