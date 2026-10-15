###### Class com.google.android.gms.games.video.VideoConfiguration (com.google.android.gms.games.video.VideoConfiguration)
.class public final Lcom/google/android/gms/games/video/VideoConfiguration;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "com.google.android.gms:play-services-games@@21.0.0"


# annotations
.annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Class;
.end annotation

.annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Reserved;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/games/video/VideoConfiguration$Builder;,
        Lcom/google/android/gms/games/video/VideoConfiguration$ValidCaptureModes;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/games/video/VideoConfiguration;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final o:I
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
    .end annotation
.end field

.field private final p:I
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
    .end annotation
.end field

.field private final q:Z
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
    .end annotation
.end field

.field private final r:Z
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
    .end annotation
.end field

.field private final s:Z
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lcom/google/android/gms/games/video/zzb;

    invoke-direct {v0}, Lcom/google/android/gms/games/video/zzb;-><init>()V

    sput-object v0, Lcom/google/android/gms/games/video/VideoConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IIZZZ)V
    .registers 8
    .param p1    # I
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
        .end annotation
    .end param
    .param p3    # Z
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
        .end annotation
    .end param
    .param p4    # Z
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
        .end annotation
    .end param
    .param p5    # Z
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Constructor;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    const/4 v0, 0x0

    .line 2
    invoke-static {p1, v0}, Lcom/google/android/gms/games/video/VideoConfiguration;->a4(IZ)Z

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->a(Z)V

    .line 3
    invoke-static {p2, v0}, Lcom/google/android/gms/games/video/VideoConfiguration;->Z3(IZ)Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->a(Z)V

    .line 4
    iput p1, p0, Lcom/google/android/gms/games/video/VideoConfiguration;->o:I

    .line 5
    iput p2, p0, Lcom/google/android/gms/games/video/VideoConfiguration;->p:I

    .line 6
    iput-boolean p3, p0, Lcom/google/android/gms/games/video/VideoConfiguration;->q:Z

    .line 7
    iput-boolean p4, p0, Lcom/google/android/gms/games/video/VideoConfiguration;->r:Z

    .line 8
    iput-boolean p5, p0, Lcom/google/android/gms/games/video/VideoConfiguration;->s:Z

    return-void
.end method

.method public static Z3(IZ)Z
    .registers 3

    const/4 v0, -0x1

    if-eq p0, v0, :cond_b

    const/4 v0, 0x1

    if-eqz p0, :cond_a

    if-eq p0, v0, :cond_b

    const/4 p0, 0x0

    return p0

    :cond_a
    return v0

    :cond_b
    return p1
.end method

.method public static a4(IZ)Z
    .registers 3

    const/4 v0, -0x1

    if-eq p0, v0, :cond_10

    const/4 p1, 0x1

    if-eqz p0, :cond_10

    if-eq p0, p1, :cond_10

    const/4 v0, 0x2

    if-eq p0, v0, :cond_10

    const/4 v0, 0x3

    if-eq p0, v0, :cond_10

    const/4 p0, 0x0

    return p0

    :cond_10
    return p1
.end method


# virtual methods
.method public final V3()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/games/video/VideoConfiguration;->r:Z

    return v0
.end method

.method public final W3()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/games/video/VideoConfiguration;->p:I

    return v0
.end method

.method public final X3()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/games/video/VideoConfiguration;->s:Z

    return v0
.end method

.method public final Y3()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/games/video/VideoConfiguration;->o:I

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->a(Landroid/os/Parcel;)I

    move-result p2

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/games/video/VideoConfiguration;->Y3()I

    move-result v0

    const/4 v1, 0x1

    .line 3
    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->l(Landroid/os/Parcel;II)V

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/games/video/VideoConfiguration;->W3()I

    move-result v0

    const/4 v1, 0x2

    .line 5
    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->l(Landroid/os/Parcel;II)V

    .line 6
    iget-boolean v0, p0, Lcom/google/android/gms/games/video/VideoConfiguration;->q:Z

    const/4 v1, 0x7

    .line 7
    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->c(Landroid/os/Parcel;IZ)V

    .line 8
    invoke-virtual {p0}, Lcom/google/android/gms/games/video/VideoConfiguration;->V3()Z

    move-result v0

    const/16 v1, 0x8

    .line 9
    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->c(Landroid/os/Parcel;IZ)V

    .line 10
    invoke-virtual {p0}, Lcom/google/android/gms/games/video/VideoConfiguration;->X3()Z

    move-result v0

    const/16 v1, 0x9

    .line 11
    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->c(Landroid/os/Parcel;IZ)V

    .line 12
    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->b(Landroid/os/Parcel;I)V

    return-void
.end method

###### Class com.google.android.gms.games.video.VideoConfiguration.Builder (com.google.android.gms.games.video.VideoConfiguration$Builder)
.class public final Lcom/google/android/gms/games/video/VideoConfiguration$Builder;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games@@21.0.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/video/VideoConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

###### Class com.google.android.gms.games.video.VideoConfiguration.ValidCaptureModes (com.google.android.gms.games.video.VideoConfiguration$ValidCaptureModes)
.class public interface abstract annotation Lcom/google/android/gms/games/video/VideoConfiguration$ValidCaptureModes;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games@@21.0.0"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/video/VideoConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "ValidCaptureModes"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation
