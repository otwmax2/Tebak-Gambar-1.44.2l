###### Class com.google.android.gms.internal.ads.zzgkf (com.google.android.gms.internal.ads.zzgkf)
.class public final Lcom/google/android/gms/internal/ads/zzgkf;
.super Lcom/google/android/gms/internal/ads/zzgqm;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgrx;


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/ads/zzgkf;


# instance fields
.field private zzd:I

.field private zze:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgkf;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzgkf;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgkf;->zzb:Lcom/google/android/gms/internal/ads/zzgkf;

    const-class v1, Lcom/google/android/gms/internal/ads/zzgkf;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzgqm;->A(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzgqm;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgqm;-><init>()V

    return-void
.end method

.method public static J()Lcom/google/android/gms/internal/ads/zzgke;
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgkf;->zzb:Lcom/google/android/gms/internal/ads/zzgkf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgqm;->h()Lcom/google/android/gms/internal/ads/zzgqi;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgke;

    return-object v0
.end method

.method static synthetic K()Lcom/google/android/gms/internal/ads/zzgkf;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgkf;->zzb:Lcom/google/android/gms/internal/ads/zzgkf;

    return-object v0
.end method

.method public static L()Lcom/google/android/gms/internal/ads/zzgkf;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgkf;->zzb:Lcom/google/android/gms/internal/ads/zzgkf;

    return-object v0
.end method

.method static synthetic M(Lcom/google/android/gms/internal/ads/zzgkf;I)V
    .registers 2

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzgkf;->zze:I

    return-void
.end method

.method static synthetic O(Lcom/google/android/gms/internal/ads/zzgkf;I)V
    .registers 2

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgjw;->a(I)I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzgkf;->zzd:I

    return-void
.end method


# virtual methods
.method protected final F(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    add-int/lit8 p1, p1, -0x1

    const/4 p2, 0x1

    if-eqz p1, :cond_36

    const/4 p3, 0x2

    if-eq p1, p3, :cond_22

    const/4 p2, 0x3

    if-eq p1, p2, :cond_1c

    const/4 p2, 0x4

    const/4 p3, 0x0

    if-eq p1, p2, :cond_16

    const/4 p2, 0x5

    if-eq p1, p2, :cond_13

    return-object p3

    .line 1
    :cond_13
    sget-object p1, Lcom/google/android/gms/internal/ads/zzgkf;->zzb:Lcom/google/android/gms/internal/ads/zzgkf;

    return-object p1

    :cond_16
    new-instance p1, Lcom/google/android/gms/internal/ads/zzgke;

    .line 2
    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzgke;-><init>(Lcom/google/android/gms/internal/ads/zzgkd;)V

    return-object p1

    :cond_1c
    new-instance p1, Lcom/google/android/gms/internal/ads/zzgkf;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzgkf;-><init>()V

    return-object p1

    :cond_22
    new-array p1, p3, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "zzd"

    aput-object v0, p1, p3

    const-string p3, "zze"

    aput-object p3, p1, p2

    .line 3
    sget-object p2, Lcom/google/android/gms/internal/ads/zzgkf;->zzb:Lcom/google/android/gms/internal/ads/zzgkf;

    const-string p3, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u000c\u0002\u000b"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/ads/zzgqm;->x(Lcom/google/android/gms/internal/ads/zzgrw;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 4
    :cond_36
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method

.method public final I()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgkf;->zze:I

    return v0
.end method

.method public final N()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgkf;->zzd:I

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgjw;->b(I)I

    move-result v0

    if-nez v0, :cond_9

    const/4 v0, 0x1

    :cond_9
    return v0
.end method
