###### Class com.google.android.gms.internal.ads.zzaws (com.google.android.gms.internal.ads.zzaws)
.class public final Lcom/google/android/gms/internal/ads/zzaws;
.super Lcom/google/android/gms/internal/ads/zzgqm;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgrx;


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/ads/zzaws;


# instance fields
.field private zzd:I

.field private zze:I

.field private zzf:Lcom/google/android/gms/internal/ads/zzaww;

.field private zzg:Lcom/google/android/gms/internal/ads/zzawy;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzaws;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzaws;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzaws;->zzb:Lcom/google/android/gms/internal/ads/zzaws;

    const-class v1, Lcom/google/android/gms/internal/ads/zzaws;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzgqm;->A(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzgqm;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgqm;-><init>()V

    return-void
.end method

.method public static I()Lcom/google/android/gms/internal/ads/zzawr;
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzaws;->zzb:Lcom/google/android/gms/internal/ads/zzaws;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgqm;->h()Lcom/google/android/gms/internal/ads/zzgqi;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzawr;

    return-object v0
.end method

.method static synthetic J()Lcom/google/android/gms/internal/ads/zzaws;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzaws;->zzb:Lcom/google/android/gms/internal/ads/zzaws;

    return-object v0
.end method

.method static synthetic K(Lcom/google/android/gms/internal/ads/zzaws;Lcom/google/android/gms/internal/ads/zzaww;)V
    .registers 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaws;->zzf:Lcom/google/android/gms/internal/ads/zzaww;

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzaws;->zzd:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaws;->zzd:I

    return-void
.end method

.method static synthetic L(Lcom/google/android/gms/internal/ads/zzaws;Lcom/google/android/gms/internal/ads/zzawy;)V
    .registers 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaws;->zzg:Lcom/google/android/gms/internal/ads/zzawy;

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzaws;->zzd:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaws;->zzd:I

    return-void
.end method

.method static synthetic M(Lcom/google/android/gms/internal/ads/zzaws;I)V
    .registers 3

    const/4 p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaws;->zze:I

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaws;->zzd:I

    or-int/2addr p1, v0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaws;->zzd:I

    return-void
.end method


# virtual methods
.method protected final F(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8

    add-int/lit8 p1, p1, -0x1

    const/4 p2, 0x1

    if-eqz p1, :cond_42

    const/4 p3, 0x5

    const/4 v0, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x2

    if-eq p1, v2, :cond_22

    if-eq p1, v1, :cond_1c

    const/4 p2, 0x0

    if-eq p1, v0, :cond_16

    if-eq p1, p3, :cond_13

    return-object p2

    .line 1
    :cond_13
    sget-object p1, Lcom/google/android/gms/internal/ads/zzaws;->zzb:Lcom/google/android/gms/internal/ads/zzaws;

    return-object p1

    :cond_16
    new-instance p1, Lcom/google/android/gms/internal/ads/zzawr;

    .line 2
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzawr;-><init>(Lcom/google/android/gms/internal/ads/zzawl;)V

    return-object p1

    :cond_1c
    new-instance p1, Lcom/google/android/gms/internal/ads/zzaws;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzaws;-><init>()V

    return-object p1

    :cond_22
    new-array p1, p3, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v3, "zzd"

    aput-object v3, p1, p3

    const-string p3, "zze"

    aput-object p3, p1, p2

    .line 3
    sget-object p2, Lcom/google/android/gms/internal/ads/zzawu;->a:Lcom/google/android/gms/internal/ads/zzgqq;

    aput-object p2, p1, v2

    const-string p2, "zzf"

    aput-object p2, p1, v1

    const-string p2, "zzg"

    aput-object p2, p1, v0

    sget-object p2, Lcom/google/android/gms/internal/ads/zzaws;->zzb:Lcom/google/android/gms/internal/ads/zzaws;

    const-string p3, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u100c\u0000\u0002\u1009\u0001\u0003\u1009\u0002"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/ads/zzgqm;->x(Lcom/google/android/gms/internal/ads/zzgrw;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 4
    :cond_42
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
