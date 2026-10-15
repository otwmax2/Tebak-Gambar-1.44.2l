###### Class com.google.android.gms.internal.ads.zzbdg (com.google.android.gms.internal.ads.zzbdg)
.class public final Lcom/google/android/gms/internal/ads/zzbdg;
.super Lcom/google/android/gms/internal/ads/zzbdo;
.source "com.google.android.gms:play-services-ads-lite@@22.0.0"


# static fields
.field private static final w:I

.field static final x:I

.field static final y:I


# instance fields
.field private final o:Ljava/lang/String;

.field private final p:Ljava/util/List;

.field private final q:Ljava/util/List;

.field private final r:I

.field private final s:I

.field private final t:I

.field private final u:I

.field private final v:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/16 v0, 0xc

    const/16 v1, 0xae

    const/16 v2, 0xce

    .line 1
    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/google/android/gms/internal/ads/zzbdg;->w:I

    const/16 v1, 0xcc

    .line 2
    invoke-static {v1, v1, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    sput v1, Lcom/google/android/gms/internal/ads/zzbdg;->x:I

    sput v0, Lcom/google/android/gms/internal/ads/zzbdg;->y:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;IIZ)V
    .registers 10

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbdo;-><init>()V

    new-instance p8, Ljava/util/ArrayList;

    .line 2
    invoke-direct {p8}, Ljava/util/ArrayList;-><init>()V

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzbdg;->p:Ljava/util/List;

    new-instance p8, Ljava/util/ArrayList;

    .line 3
    invoke-direct {p8}, Ljava/util/ArrayList;-><init>()V

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzbdg;->q:Ljava/util/List;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbdg;->o:Ljava/lang/String;

    const/4 p1, 0x0

    .line 4
    :goto_14
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p8

    if-ge p1, p8, :cond_2d

    .line 5
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p8

    check-cast p8, Lcom/google/android/gms/internal/ads/zzbdj;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdg;->p:Ljava/util/List;

    .line 6
    invoke-interface {v0, p8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdg;->q:Ljava/util/List;

    .line 7
    invoke-interface {v0, p8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_14

    :cond_2d
    if-eqz p3, :cond_34

    .line 8
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_36

    .line 9
    :cond_34
    sget p1, Lcom/google/android/gms/internal/ads/zzbdg;->x:I

    .line 10
    :goto_36
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbdg;->r:I

    if-eqz p4, :cond_3f

    .line 11
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_41

    .line 12
    :cond_3f
    sget p1, Lcom/google/android/gms/internal/ads/zzbdg;->y:I

    .line 13
    :goto_41
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbdg;->s:I

    if-eqz p5, :cond_4a

    .line 14
    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_4c

    :cond_4a
    const/16 p1, 0xc

    :goto_4c
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbdg;->t:I

    iput p6, p0, Lcom/google/android/gms/internal/ads/zzbdg;->u:I

    iput p7, p0, Lcom/google/android/gms/internal/ads/zzbdg;->v:I

    return-void
.end method


# virtual methods
.method public final Ta()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbdg;->t:I

    return v0
.end method

.method public final Ua()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdg;->p:Ljava/util/List;

    return-object v0
.end method

.method public final a()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbdg;->v:I

    return v0
.end method

.method public final b()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbdg;->s:I

    return v0
.end method

.method public final d()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbdg;->r:I

    return v0
.end method

.method public final e()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdg;->o:Ljava/lang/String;

    return-object v0
.end method

.method public final f()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdg;->q:Ljava/util/List;

    return-object v0
.end method

.method public final zzb()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbdg;->u:I

    return v0
.end method
