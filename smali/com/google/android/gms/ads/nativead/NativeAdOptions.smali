###### Class com.google.android.gms.ads.nativead.NativeAdOptions (com.google.android.gms.ads.nativead.NativeAdOptions)
.class public final Lcom/google/android/gms/ads/nativead/NativeAdOptions;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@22.0.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;,
        Lcom/google/android/gms/ads/nativead/NativeAdOptions$SwipeGestureDirection;,
        Lcom/google/android/gms/ads/nativead/NativeAdOptions$AdChoicesPlacement;,
        Lcom/google/android/gms/ads/nativead/NativeAdOptions$NativeMediaAspectRatio;
    }
.end annotation


# instance fields
.field private final a:Z

.field private final b:I

.field private final c:Z

.field private final d:I

.field private final e:Lcom/google/android/gms/ads/VideoOptions;

.field private final f:Z

.field private final g:Z

.field private final h:I


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;Lcom/google/android/gms/ads/nativead/zza;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;->o(Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/google/android/gms/ads/nativead/NativeAdOptions;->a:Z

    invoke-static {p1}, Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;->k(Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;)I

    move-result p2

    iput p2, p0, Lcom/google/android/gms/ads/nativead/NativeAdOptions;->b:I

    invoke-static {p1}, Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;->n(Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/google/android/gms/ads/nativead/NativeAdOptions;->c:Z

    invoke-static {p1}, Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;->i(Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;)I

    move-result p2

    iput p2, p0, Lcom/google/android/gms/ads/nativead/NativeAdOptions;->d:I

    invoke-static {p1}, Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;->l(Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;)Lcom/google/android/gms/ads/VideoOptions;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/ads/nativead/NativeAdOptions;->e:Lcom/google/android/gms/ads/VideoOptions;

    invoke-static {p1}, Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;->p(Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/google/android/gms/ads/nativead/NativeAdOptions;->f:Z

    invoke-static {p1}, Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;->m(Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/google/android/gms/ads/nativead/NativeAdOptions;->g:Z

    invoke-static {p1}, Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;->j(Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;)I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/ads/nativead/NativeAdOptions;->h:I

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/ads/nativead/NativeAdOptions;->d:I

    return v0
.end method

.method public b()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/ads/nativead/NativeAdOptions;->b:I

    return v0
.end method

.method public c()Lcom/google/android/gms/ads/VideoOptions;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/nativead/NativeAdOptions;->e:Lcom/google/android/gms/ads/VideoOptions;

    return-object v0
.end method

.method public d()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/ads/nativead/NativeAdOptions;->c:Z

    return v0
.end method

.method public e()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/ads/nativead/NativeAdOptions;->a:Z

    return v0
.end method

.method public final f()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/ads/nativead/NativeAdOptions;->h:I

    return v0
.end method

.method public final g()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/ads/nativead/NativeAdOptions;->g:Z

    return v0
.end method

.method public final h()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/ads/nativead/NativeAdOptions;->f:Z

    return v0
.end method

###### Class com.google.android.gms.ads.nativead.NativeAdOptions.AdChoicesPlacement (com.google.android.gms.ads.nativead.NativeAdOptions$AdChoicesPlacement)
.class public interface abstract annotation Lcom/google/android/gms/ads/nativead/NativeAdOptions$AdChoicesPlacement;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@22.0.0"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/ads/nativead/NativeAdOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "AdChoicesPlacement"
.end annotation

###### Class com.google.android.gms.ads.nativead.NativeAdOptions.Builder (com.google.android.gms.ads.nativead.NativeAdOptions$Builder)
.class public final Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@22.0.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/ads/nativead/NativeAdOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private a:Z

.field private b:I

.field private c:Z

.field private d:Lcom/google/android/gms/ads/VideoOptions;

.field private e:I

.field private f:Z

.field private g:Z

.field private h:I


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;->a:Z

    iput v0, p0, Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;->b:I

    iput-boolean v0, p0, Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;->c:Z

    const/4 v1, 0x1

    iput v1, p0, Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;->e:I

    iput-boolean v0, p0, Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;->f:Z

    iput-boolean v0, p0, Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;->g:Z

    iput v0, p0, Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;->h:I

    return-void
.end method

.method static bridge synthetic i(Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;)I
    .registers 1

    iget p0, p0, Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;->e:I

    return p0
.end method

.method static bridge synthetic j(Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;)I
    .registers 1

    iget p0, p0, Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;->h:I

    return p0
.end method

.method static bridge synthetic k(Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;)I
    .registers 1

    iget p0, p0, Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;->b:I

    return p0
.end method

.method static bridge synthetic l(Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;)Lcom/google/android/gms/ads/VideoOptions;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;->d:Lcom/google/android/gms/ads/VideoOptions;

    return-object p0
.end method

.method static bridge synthetic m(Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;->g:Z

    return p0
.end method

.method static bridge synthetic n(Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;->c:Z

    return p0
.end method

.method static bridge synthetic o(Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;->a:Z

    return p0
.end method

.method static bridge synthetic p(Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;->f:Z

    return p0
.end method


# virtual methods
.method public a()Lcom/google/android/gms/ads/nativead/NativeAdOptions;
    .registers 3

    new-instance v0, Lcom/google/android/gms/ads/nativead/NativeAdOptions;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/ads/nativead/NativeAdOptions;-><init>(Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;Lcom/google/android/gms/ads/nativead/zza;)V

    return-object v0
.end method

.method public b(IZ)Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;
    .registers 3
    .param p1    # I
        .annotation build Lcom/google/android/gms/ads/nativead/NativeAdOptions$SwipeGestureDirection;
        .end annotation
    .end param

    iput-boolean p2, p0, Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;->g:Z

    iput p1, p0, Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;->h:I

    return-object p0
.end method

.method public c(I)Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;
    .registers 2
    .param p1    # I
        .annotation build Lcom/google/android/gms/ads/nativead/NativeAdOptions$AdChoicesPlacement;
        .end annotation
    .end param

    iput p1, p0, Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;->e:I

    return-object p0
.end method

.method public d(I)Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;
    .registers 2
    .param p1    # I
        .annotation build Lcom/google/android/gms/ads/nativead/NativeAdOptions$NativeMediaAspectRatio;
        .end annotation
    .end param

    iput p1, p0, Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;->b:I

    return-object p0
.end method

.method public e(Z)Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;
    .registers 2

    iput-boolean p1, p0, Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;->f:Z

    return-object p0
.end method

.method public f(Z)Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;
    .registers 2

    iput-boolean p1, p0, Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;->c:Z

    return-object p0
.end method

.method public g(Z)Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;
    .registers 2

    iput-boolean p1, p0, Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;->a:Z

    return-object p0
.end method

.method public h(Lcom/google/android/gms/ads/VideoOptions;)Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;->d:Lcom/google/android/gms/ads/VideoOptions;

    return-object p0
.end method

###### Class com.google.android.gms.ads.nativead.NativeAdOptions.NativeMediaAspectRatio (com.google.android.gms.ads.nativead.NativeAdOptions$NativeMediaAspectRatio)
.class public interface abstract annotation Lcom/google/android/gms/ads/nativead/NativeAdOptions$NativeMediaAspectRatio;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@22.0.0"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/ads/nativead/NativeAdOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "NativeMediaAspectRatio"
.end annotation

###### Class com.google.android.gms.ads.nativead.NativeAdOptions.SwipeGestureDirection (com.google.android.gms.ads.nativead.NativeAdOptions$SwipeGestureDirection)
.class public interface abstract annotation Lcom/google/android/gms/ads/nativead/NativeAdOptions$SwipeGestureDirection;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@22.0.0"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/ads/nativead/NativeAdOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "SwipeGestureDirection"
.end annotation
