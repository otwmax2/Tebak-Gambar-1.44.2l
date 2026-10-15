###### Class com.google.android.gms.internal.ads.zzayr (com.google.android.gms.internal.ads.zzayr)
.class public final enum Lcom/google/android/gms/internal/ads/zzayr;
.super Ljava/lang/Enum;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgqo;


# static fields
.field public static final enum p:Lcom/google/android/gms/internal/ads/zzayr;

.field public static final enum q:Lcom/google/android/gms/internal/ads/zzayr;

.field public static final enum r:Lcom/google/android/gms/internal/ads/zzayr;

.field public static final enum s:Lcom/google/android/gms/internal/ads/zzayr;

.field public static final enum t:Lcom/google/android/gms/internal/ads/zzayr;

.field public static final enum u:Lcom/google/android/gms/internal/ads/zzayr;

.field private static final v:Lcom/google/android/gms/internal/ads/zzgqp;

.field private static final synthetic w:[Lcom/google/android/gms/internal/ads/zzayr;


# instance fields
.field private final o:I


# direct methods
.method static constructor <clinit>()V
    .registers 13

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzayr;

    const-string v1, "UNSPECIFIED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/internal/ads/zzayr;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzayr;->p:Lcom/google/android/gms/internal/ads/zzayr;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzayr;

    const-string v3, "CONNECTING"

    const/4 v4, 0x1

    .line 2
    invoke-direct {v1, v3, v4, v4}, Lcom/google/android/gms/internal/ads/zzayr;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/android/gms/internal/ads/zzayr;->q:Lcom/google/android/gms/internal/ads/zzayr;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzayr;

    const-string v5, "CONNECTED"

    const/4 v6, 0x2

    .line 3
    invoke-direct {v3, v5, v6, v6}, Lcom/google/android/gms/internal/ads/zzayr;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/google/android/gms/internal/ads/zzayr;->r:Lcom/google/android/gms/internal/ads/zzayr;

    new-instance v5, Lcom/google/android/gms/internal/ads/zzayr;

    const-string v7, "DISCONNECTING"

    const/4 v8, 0x3

    .line 4
    invoke-direct {v5, v7, v8, v8}, Lcom/google/android/gms/internal/ads/zzayr;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/google/android/gms/internal/ads/zzayr;->s:Lcom/google/android/gms/internal/ads/zzayr;

    new-instance v7, Lcom/google/android/gms/internal/ads/zzayr;

    const-string v9, "DISCONNECTED"

    const/4 v10, 0x4

    .line 5
    invoke-direct {v7, v9, v10, v10}, Lcom/google/android/gms/internal/ads/zzayr;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/google/android/gms/internal/ads/zzayr;->t:Lcom/google/android/gms/internal/ads/zzayr;

    new-instance v9, Lcom/google/android/gms/internal/ads/zzayr;

    const-string v11, "SUSPENDED"

    const/4 v12, 0x5

    .line 6
    invoke-direct {v9, v11, v12, v12}, Lcom/google/android/gms/internal/ads/zzayr;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/google/android/gms/internal/ads/zzayr;->u:Lcom/google/android/gms/internal/ads/zzayr;

    const/4 v11, 0x6

    new-array v11, v11, [Lcom/google/android/gms/internal/ads/zzayr;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    sput-object v11, Lcom/google/android/gms/internal/ads/zzayr;->w:[Lcom/google/android/gms/internal/ads/zzayr;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzayp;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzayp;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzayr;->v:Lcom/google/android/gms/internal/ads/zzgqp;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzayr;->o:I

    return-void
.end method

.method public static c(I)Lcom/google/android/gms/internal/ads/zzayr;
    .registers 2

    if-eqz p0, :cond_22

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1f

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1c

    const/4 v0, 0x3

    if-eq p0, v0, :cond_19

    const/4 v0, 0x4

    if-eq p0, v0, :cond_16

    const/4 v0, 0x5

    if-eq p0, v0, :cond_13

    const/4 p0, 0x0

    return-object p0

    :cond_13
    sget-object p0, Lcom/google/android/gms/internal/ads/zzayr;->u:Lcom/google/android/gms/internal/ads/zzayr;

    return-object p0

    :cond_16
    sget-object p0, Lcom/google/android/gms/internal/ads/zzayr;->t:Lcom/google/android/gms/internal/ads/zzayr;

    return-object p0

    :cond_19
    sget-object p0, Lcom/google/android/gms/internal/ads/zzayr;->s:Lcom/google/android/gms/internal/ads/zzayr;

    return-object p0

    :cond_1c
    sget-object p0, Lcom/google/android/gms/internal/ads/zzayr;->r:Lcom/google/android/gms/internal/ads/zzayr;

    return-object p0

    :cond_1f
    sget-object p0, Lcom/google/android/gms/internal/ads/zzayr;->q:Lcom/google/android/gms/internal/ads/zzayr;

    return-object p0

    :cond_22
    sget-object p0, Lcom/google/android/gms/internal/ads/zzayr;->p:Lcom/google/android/gms/internal/ads/zzayr;

    return-object p0
.end method

.method public static e()Lcom/google/android/gms/internal/ads/zzgqq;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzayq;->a:Lcom/google/android/gms/internal/ads/zzgqq;

    return-object v0
.end method

.method public static values()[Lcom/google/android/gms/internal/ads/zzayr;
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzayr;->w:[Lcom/google/android/gms/internal/ads/zzayr;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/ads/zzayr;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/ads/zzayr;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzayr;->o:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zza()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzayr;->o:I

    return v0
.end method

###### Class com.google.android.gms.internal.ads.zzayp (com.google.android.gms.internal.ads.zzayp)
.class final Lcom/google/android/gms/internal/ads/zzayp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgqp;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
