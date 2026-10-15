###### Class com.google.android.gms.internal.ads.zzgvw (com.google.android.gms.internal.ads.zzgvw)
.class public final Lcom/google/android/gms/internal/ads/zzgvw;
.super Lcom/google/android/gms/internal/ads/zzgqm;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgrx;


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/ads/zzgvw;


# instance fields
.field private zzd:I

.field private zze:Ljava/lang/String;

.field private zzf:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgvw;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzgvw;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgvw;->zzb:Lcom/google/android/gms/internal/ads/zzgvw;

    const-class v1, Lcom/google/android/gms/internal/ads/zzgvw;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzgqm;->A(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzgqm;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgqm;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgvw;->zze:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgvw;->zzf:Ljava/lang/String;

    return-void
.end method

.method static synthetic I()Lcom/google/android/gms/internal/ads/zzgvw;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgvw;->zzb:Lcom/google/android/gms/internal/ads/zzgvw;

    return-object v0
.end method


# virtual methods
.method protected final F(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    add-int/lit8 p1, p1, -0x1

    const/4 p2, 0x1

    if-eqz p1, :cond_3a

    const/4 p3, 0x3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_22

    if-eq p1, p3, :cond_1c

    const/4 p2, 0x4

    const/4 p3, 0x0

    if-eq p1, p2, :cond_16

    const/4 p2, 0x5

    if-eq p1, p2, :cond_13

    return-object p3

    .line 1
    :cond_13
    sget-object p1, Lcom/google/android/gms/internal/ads/zzgvw;->zzb:Lcom/google/android/gms/internal/ads/zzgvw;

    return-object p1

    :cond_16
    new-instance p1, Lcom/google/android/gms/internal/ads/zzgvv;

    .line 2
    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzgvv;-><init>(Lcom/google/android/gms/internal/ads/zzgub;)V

    return-object p1

    :cond_1c
    new-instance p1, Lcom/google/android/gms/internal/ads/zzgvw;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzgvw;-><init>()V

    return-object p1

    :cond_22
    new-array p1, p3, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v1, "zzd"

    aput-object v1, p1, p3

    const-string p3, "zze"

    aput-object p3, p1, p2

    const-string p2, "zzf"

    aput-object p2, p1, v0

    .line 3
    sget-object p2, Lcom/google/android/gms/internal/ads/zzgvw;->zzb:Lcom/google/android/gms/internal/ads/zzgvw;

    const-string p3, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u1008\u0000\u0002\u1008\u0001"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/ads/zzgqm;->x(Lcom/google/android/gms/internal/ads/zzgrw;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 4
    :cond_3a
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
