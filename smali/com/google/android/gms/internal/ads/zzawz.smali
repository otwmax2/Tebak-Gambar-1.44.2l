###### Class com.google.android.gms.internal.ads.zzawz (com.google.android.gms.internal.ads.zzawz)
.class public final Lcom/google/android/gms/internal/ads/zzawz;
.super Lcom/google/android/gms/internal/ads/zzgqm;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgrx;


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/ads/zzawz;


# instance fields
.field private zzd:Lcom/google/android/gms/internal/ads/zzgqv;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzawz;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzawz;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzawz;->zzb:Lcom/google/android/gms/internal/ads/zzawz;

    const-class v1, Lcom/google/android/gms/internal/ads/zzawz;

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzgqm;->A(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzgqm;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgqm;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgqm;->u()Lcom/google/android/gms/internal/ads/zzgqv;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzawz;->zzd:Lcom/google/android/gms/internal/ads/zzgqv;

    return-void
.end method

.method public static I()Lcom/google/android/gms/internal/ads/zzawt;
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzawz;->zzb:Lcom/google/android/gms/internal/ads/zzawz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgqm;->h()Lcom/google/android/gms/internal/ads/zzgqi;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzawt;

    return-object v0
.end method

.method static synthetic J()Lcom/google/android/gms/internal/ads/zzawz;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzawz;->zzb:Lcom/google/android/gms/internal/ads/zzawz;

    return-object v0
.end method

.method static synthetic K(Lcom/google/android/gms/internal/ads/zzawz;Lcom/google/android/gms/internal/ads/zzaws;)V
    .registers 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzawz;->zzd:Lcom/google/android/gms/internal/ads/zzgqv;

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzgqv;->a()Z

    move-result v1

    if-nez v1, :cond_11

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgqm;->v(Lcom/google/android/gms/internal/ads/zzgqv;)Lcom/google/android/gms/internal/ads/zzgqv;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzawz;->zzd:Lcom/google/android/gms/internal/ads/zzgqv;

    :cond_11
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzawz;->zzd:Lcom/google/android/gms/internal/ads/zzgqv;

    .line 4
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

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
    sget-object p1, Lcom/google/android/gms/internal/ads/zzawz;->zzb:Lcom/google/android/gms/internal/ads/zzawz;

    return-object p1

    :cond_16
    new-instance p1, Lcom/google/android/gms/internal/ads/zzawt;

    .line 2
    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzawt;-><init>(Lcom/google/android/gms/internal/ads/zzawl;)V

    return-object p1

    :cond_1c
    new-instance p1, Lcom/google/android/gms/internal/ads/zzawz;

    .line 3
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzawz;-><init>()V

    return-object p1

    :cond_22
    new-array p1, p3, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "zzd"

    aput-object v0, p1, p3

    .line 4
    const-class p3, Lcom/google/android/gms/internal/ads/zzaws;

    aput-object p3, p1, p2

    sget-object p2, Lcom/google/android/gms/internal/ads/zzawz;->zzb:Lcom/google/android/gms/internal/ads/zzawz;

    const-string p3, "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001b"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/ads/zzgqm;->x(Lcom/google/android/gms/internal/ads/zzgrw;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 5
    :cond_36
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
