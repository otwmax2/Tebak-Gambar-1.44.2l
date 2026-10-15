###### Class com.google.android.gms.internal.ads.zzaab (com.google.android.gms.internal.ads.zzaab)
.class public interface abstract Lcom/google/android/gms/internal/ads/zzaab;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# static fields
.field public static final a:Lcom/google/android/gms/internal/ads/zzaab;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzzz;->b:Lcom/google/android/gms/internal/ads/zzzz;

    sput-object v0, Lcom/google/android/gms/internal/ads/zzaab;->a:Lcom/google/android/gms/internal/ads/zzaab;

    return-void
.end method


# virtual methods
.method public abstract a(Landroid/net/Uri;Ljava/util/Map;)[Lcom/google/android/gms/internal/ads/zzzu;
.end method

.method public abstract zza()[Lcom/google/android/gms/internal/ads/zzzu;
.end method

###### Class com.google.android.gms.internal.ads.zzzz (com.google.android.gms.internal.ads.zzzz)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzzz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzaab;


# static fields
.field public static final synthetic b:Lcom/google/android/gms/internal/ads/zzzz;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzzz;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzzz;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzzz;->b:Lcom/google/android/gms/internal/ads/zzzz;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Landroid/net/Uri;Ljava/util/Map;)[Lcom/google/android/gms/internal/ads/zzzu;
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzaaa;->a(Lcom/google/android/gms/internal/ads/zzaab;Landroid/net/Uri;Ljava/util/Map;)[Lcom/google/android/gms/internal/ads/zzzu;

    move-result-object p1

    return-object p1
.end method

.method public final zza()[Lcom/google/android/gms/internal/ads/zzzu;
    .registers 2

    sget v0, Lcom/google/android/gms/internal/ads/zzaaa;->a:I

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/gms/internal/ads/zzzu;

    return-object v0
.end method
