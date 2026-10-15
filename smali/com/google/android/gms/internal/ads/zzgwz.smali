###### Class com.google.android.gms.internal.ads.zzgwz (com.google.android.gms.internal.ads.zzgwz)
.class public final Lcom/google/android/gms/internal/ads/zzgwz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgwy;
.implements Lcom/google/android/gms/internal/ads/zzgws;


# static fields
.field private static final b:Lcom/google/android/gms/internal/ads/zzgwz;


# instance fields
.field private final a:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgwz;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzgwz;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgwz;->b:Lcom/google/android/gms/internal/ads/zzgwz;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgwz;->a:Ljava/lang/Object;

    return-void
.end method

.method public static a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgwy;
    .registers 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgwz;

    const-string v1, "instance cannot be null"

    invoke-static {p0, v1}, Lcom/google/android/gms/internal/ads/zzgxg;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzgwz;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static b(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgwy;
    .registers 2

    if-nez p0, :cond_5

    .line 1
    sget-object p0, Lcom/google/android/gms/internal/ads/zzgwz;->b:Lcom/google/android/gms/internal/ads/zzgwz;

    goto :goto_b

    :cond_5
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgwz;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzgwz;-><init>(Ljava/lang/Object;)V

    move-object p0, v0

    :goto_b
    return-object p0
.end method


# virtual methods
.method public final zzb()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgwz;->a:Ljava/lang/Object;

    return-object v0
.end method
