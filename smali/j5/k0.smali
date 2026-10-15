###### Class j5.k0 (j5.k0)
.class public final Lj5/k0;
.super Lg5/a0;
.source "com.google.firebase:firebase-auth@@19.3.1"


# annotations
.annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Class;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lj5/k0;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final o:Ljava/util/List;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lg5/g0;",
            ">;"
        }
    .end annotation
.end field

.field private final p:Lj5/n0;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
    .end annotation
.end field

.field private final q:Ljava/lang/String;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
    .end annotation
.end field

.field private final r:Lg5/o0;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
    .end annotation
.end field

.field private final s:Lj5/e0;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lj5/l0;

    invoke-direct {v0}, Lj5/l0;-><init>()V

    sput-object v0, Lj5/k0;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lj5/n0;Ljava/lang/String;Lg5/o0;Lj5/e0;)V
    .registers 8
    .param p1    # Ljava/util/List;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
        .end annotation
    .end param
    .param p2    # Lj5/n0;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
        .end annotation
    .end param
    .param p4    # Lg5/o0;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
        .end annotation
    .end param
    .param p5    # Lj5/e0;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Constructor;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lg5/g0;",
            ">;",
            "Lj5/n0;",
            "Ljava/lang/String;",
            "Lg5/o0;",
            "Lj5/e0;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lg5/a0;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lj5/k0;->o:Ljava/util/List;

    .line 3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_e
    :goto_e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg5/z;

    .line 4
    instance-of v1, v0, Lg5/g0;

    if-eqz v1, :cond_e

    .line 5
    iget-object v1, p0, Lj5/k0;->o:Ljava/util/List;

    check-cast v0, Lg5/g0;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e

    .line 6
    :cond_26
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lj5/n0;

    iput-object p1, p0, Lj5/k0;->p:Lj5/n0;

    .line 7
    invoke-static {p3}, Lcom/google/android/gms/common/internal/Preconditions;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lj5/k0;->q:Ljava/lang/String;

    .line 8
    iput-object p4, p0, Lj5/k0;->r:Lg5/o0;

    .line 9
    iput-object p5, p0, Lj5/k0;->s:Lj5/e0;

    return-void
.end method

.method public static W3(Lcom/google/android/gms/internal/firebase_auth/zzej;Lcom/google/firebase/auth/FirebaseAuth;Lg5/s;)Lj5/k0;
    .registers 10

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase_auth/zzej;->X3()Ljava/util/List;

    move-result-object v0

    .line 2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_d
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg5/z;

    .line 4
    instance-of v3, v1, Lg5/g0;

    if-eqz v3, :cond_d

    .line 5
    check-cast v1, Lg5/g0;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 6
    :cond_23
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase_auth/zzej;->X3()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase_auth/zzej;->V3()Ljava/lang/String;

    move-result-object v1

    .line 7
    invoke-static {v0, v1}, Lj5/n0;->V3(Ljava/util/List;Ljava/lang/String;)Lj5/n0;

    move-result-object v3

    .line 8
    new-instance v0, Lj5/k0;

    .line 9
    invoke-virtual {p1}, Lcom/google/firebase/auth/FirebaseAuth;->m()Lb5/g;

    move-result-object p1

    invoke-virtual {p1}, Lb5/g;->o()Ljava/lang/String;

    move-result-object v4

    .line 10
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase_auth/zzej;->W3()Lg5/o0;

    move-result-object v5

    move-object v6, p2

    check-cast v6, Lj5/e0;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lj5/k0;-><init>(Ljava/util/List;Lj5/n0;Ljava/lang/String;Lg5/o0;Lj5/e0;)V

    return-object v0
.end method


# virtual methods
.method public final V3()Lg5/b0;
    .registers 2

    .line 1
    iget-object v0, p0, Lj5/k0;->p:Lj5/n0;

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 7

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->a(Landroid/os/Parcel;)I

    move-result v0

    .line 2
    iget-object v1, p0, Lj5/k0;->o:Ljava/util/List;

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 3
    invoke-static {p1, v2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->x(Landroid/os/Parcel;ILjava/util/List;Z)V

    .line 4
    invoke-virtual {p0}, Lg5/a0;->V3()Lg5/b0;

    move-result-object v1

    const/4 v2, 0x2

    .line 5
    invoke-static {p1, v2, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->s(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 6
    iget-object v1, p0, Lj5/k0;->q:Ljava/lang/String;

    const/4 v2, 0x3

    .line 7
    invoke-static {p1, v2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->t(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 8
    iget-object v1, p0, Lj5/k0;->r:Lg5/o0;

    const/4 v2, 0x4

    .line 9
    invoke-static {p1, v2, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->s(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 10
    iget-object v1, p0, Lj5/k0;->s:Lj5/e0;

    const/4 v2, 0x5

    .line 11
    invoke-static {p1, v2, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->s(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 12
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->b(Landroid/os/Parcel;I)V

    return-void
.end method
