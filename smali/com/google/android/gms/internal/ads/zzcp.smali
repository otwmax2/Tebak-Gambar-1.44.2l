###### Class com.google.android.gms.internal.ads.zzcp (com.google.android.gms.internal.ads.zzcp)
.class public final Lcom/google/android/gms/internal/ads/zzcp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# static fields
.field private static final f:Ljava/lang/String;

.field private static final g:Ljava/lang/String;

.field public static final h:Lcom/google/android/gms/internal/ads/zzn;


# instance fields
.field public final a:I

.field public final b:Ljava/lang/String;

.field public final c:I

.field private final d:[Lcom/google/android/gms/internal/ads/zzaf;

.field private e:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzew;->p(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzcp;->f:Ljava/lang/String;

    const/4 v0, 0x1

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzew;->p(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzcp;->g:Ljava/lang/String;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzco;->a:Lcom/google/android/gms/internal/ads/zzco;

    sput-object v0, Lcom/google/android/gms/internal/ads/zzcp;->h:Lcom/google/android/gms/internal/ads/zzn;

    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;[Lcom/google/android/gms/internal/ads/zzaf;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcp;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcp;->d:[Lcom/google/android/gms/internal/ads/zzaf;

    const/4 p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzcp;->a:I

    const/4 p1, 0x0

    aget-object v0, p2, p1

    .line 1
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzaf;->l:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbt;->b(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1e

    aget-object v0, p2, p1

    .line 2
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzaf;->k:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbt;->b(Ljava/lang/String;)I

    move-result v0

    :cond_1e
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzcp;->c:I

    aget-object v0, p2, p1

    .line 3
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzaf;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcp;->d(Ljava/lang/String;)Ljava/lang/String;

    aget-object p1, p2, p1

    .line 4
    iget p1, p1, Lcom/google/android/gms/internal/ads/zzaf;->e:I

    return-void
.end method

.method private static d(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    if-eqz p0, :cond_c

    const-string v0, "und"

    .line 1
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_c

    :cond_b
    return-object p0

    :cond_c
    :goto_c
    const-string p0, ""

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/zzaf;)I
    .registers 4

    const/4 v0, 0x0

    :goto_1
    if-gtz v0, :cond_d

    .line 1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcp;->d:[Lcom/google/android/gms/internal/ads/zzaf;

    aget-object v1, v1, v0

    if-ne p1, v1, :cond_a

    return v0

    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_d
    const/4 p1, -0x1

    return p1
.end method

.method public final b(I)Lcom/google/android/gms/internal/ads/zzaf;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcp;->d:[Lcom/google/android/gms/internal/ads/zzaf;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public final c(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzcp;
    .registers 4

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcp;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcp;->d:[Lcom/google/android/gms/internal/ads/zzaf;

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzcp;-><init>(Ljava/lang/String;[Lcom/google/android/gms/internal/ads/zzaf;)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_27

    .line 1
    const-class v2, Lcom/google/android/gms/internal/ads/zzcp;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_10

    goto :goto_27

    :cond_10
    check-cast p1, Lcom/google/android/gms/internal/ads/zzcp;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcp;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzcp;->b:Ljava/lang/String;

    .line 2
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcp;->d:[Lcom/google/android/gms/internal/ads/zzaf;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzcp;->d:[Lcom/google/android/gms/internal/ads/zzaf;

    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_27

    return v0

    :cond_27
    :goto_27
    return v1
.end method

.method public final hashCode()I
    .registers 3

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzcp;->e:I

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcp;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcp;->d:[Lcom/google/android/gms/internal/ads/zzaf;

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzcp;->e:I

    :cond_17
    return v0
.end method

###### Class com.google.android.gms.internal.ads.zzco (com.google.android.gms.internal.ads.zzco)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzco;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzn;


# static fields
.field public static final synthetic a:Lcom/google/android/gms/internal/ads/zzco;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzco;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzco;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzco;->a:Lcom/google/android/gms/internal/ads/zzco;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
