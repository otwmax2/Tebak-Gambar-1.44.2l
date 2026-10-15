###### Class j5.e0 (j5.e0)
.class public Lj5/e0;
.super Lg5/s;
.source "com.google.firebase:firebase-auth@@19.3.1"


# annotations
.annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Class;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lj5/e0;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private o:Lcom/google/android/gms/internal/firebase_auth/zzff;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
    .end annotation
.end field

.field private p:Lj5/a0;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
    .end annotation
.end field

.field private q:Ljava/lang/String;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
    .end annotation
.end field

.field private r:Ljava/lang/String;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
    .end annotation
.end field

.field private s:Ljava/util/List;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lj5/a0;",
            ">;"
        }
    .end annotation
.end field

.field private t:Ljava/util/List;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private u:Ljava/lang/String;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
    .end annotation
.end field

.field private v:Ljava/lang/Boolean;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
    .end annotation
.end field

.field private w:Lj5/g0;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
    .end annotation
.end field

.field private x:Z
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
    .end annotation
.end field

.field private y:Lg5/o0;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
    .end annotation
.end field

.field private z:Lj5/m;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lj5/h0;

    invoke-direct {v0}, Lj5/h0;-><init>()V

    sput-object v0, Lj5/e0;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lb5/g;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb5/g;",
            "Ljava/util/List<",
            "+",
            "Lg5/j0;",
            ">;)V"
        }
    .end annotation

    .line 14
    invoke-direct {p0}, Lg5/s;-><init>()V

    .line 15
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    invoke-virtual {p1}, Lb5/g;->o()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lj5/e0;->q:Ljava/lang/String;

    const-string p1, "com.google.firebase.auth.internal.DefaultFirebaseUser"

    .line 17
    iput-object p1, p0, Lj5/e0;->r:Ljava/lang/String;

    const-string p1, "2"

    .line 18
    iput-object p1, p0, Lj5/e0;->u:Ljava/lang/String;

    .line 19
    invoke-virtual {p0, p2}, Lg5/s;->f4(Ljava/util/List;)Lg5/s;

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/internal/firebase_auth/zzff;Lj5/a0;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/Boolean;Lj5/g0;ZLg5/o0;Lj5/m;)V
    .registers 13
    .param p1    # Lcom/google/android/gms/internal/firebase_auth/zzff;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
        .end annotation
    .end param
    .param p2    # Lj5/a0;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
        .end annotation
    .end param
    .param p5    # Ljava/util/List;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
        .end annotation
    .end param
    .param p6    # Ljava/util/List;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
        .end annotation
    .end param
    .param p8    # Ljava/lang/Boolean;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
        .end annotation
    .end param
    .param p9    # Lj5/g0;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
        .end annotation
    .end param
    .param p10    # Z
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
        .end annotation
    .end param
    .param p11    # Lg5/o0;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
        .end annotation
    .end param
    .param p12    # Lj5/m;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Constructor;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/firebase_auth/zzff;",
            "Lj5/a0;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lj5/a0;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Lj5/g0;",
            "Z",
            "Lg5/o0;",
            "Lj5/m;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lg5/s;-><init>()V

    .line 2
    iput-object p1, p0, Lj5/e0;->o:Lcom/google/android/gms/internal/firebase_auth/zzff;

    .line 3
    iput-object p2, p0, Lj5/e0;->p:Lj5/a0;

    .line 4
    iput-object p3, p0, Lj5/e0;->q:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lj5/e0;->r:Ljava/lang/String;

    .line 6
    iput-object p5, p0, Lj5/e0;->s:Ljava/util/List;

    .line 7
    iput-object p6, p0, Lj5/e0;->t:Ljava/util/List;

    .line 8
    iput-object p7, p0, Lj5/e0;->u:Ljava/lang/String;

    .line 9
    iput-object p8, p0, Lj5/e0;->v:Ljava/lang/Boolean;

    .line 10
    iput-object p9, p0, Lj5/e0;->w:Lj5/g0;

    .line 11
    iput-boolean p10, p0, Lj5/e0;->x:Z

    .line 12
    iput-object p11, p0, Lj5/e0;->y:Lg5/o0;

    .line 13
    iput-object p12, p0, Lj5/e0;->z:Lj5/m;

    return-void
.end method


# virtual methods
.method public O1()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lj5/e0;->p:Lj5/a0;

    invoke-virtual {v0}, Lj5/a0;->O1()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public V3()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lj5/e0;->p:Lj5/a0;

    invoke-virtual {v0}, Lj5/a0;->V3()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public X3()Lg5/t;
    .registers 2

    .line 1
    iget-object v0, p0, Lj5/e0;->w:Lj5/g0;

    return-object v0
.end method

.method public synthetic Y3()Lg5/y;
    .registers 2

    .line 1
    new-instance v0, Lj5/i0;

    invoke-direct {v0, p0}, Lj5/i0;-><init>(Lj5/e0;)V

    return-object v0
.end method

.method public Z3()Landroid/net/Uri;
    .registers 2

    .line 1
    iget-object v0, p0, Lj5/e0;->p:Lj5/a0;

    invoke-virtual {v0}, Lj5/a0;->X3()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public a4()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lg5/j0;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lj5/e0;->s:Ljava/util/List;

    return-object v0
.end method

.method public b4()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lj5/e0;->p:Lj5/a0;

    invoke-virtual {v0}, Lj5/a0;->Y3()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lj5/e0;->o:Lcom/google/android/gms/internal/firebase_auth/zzff;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase_auth/zzff;->c4()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c4()Z
    .registers 4

    .line 1
    iget-object v0, p0, Lj5/e0;->v:Ljava/lang/Boolean;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 2
    :cond_a
    iget-object v0, p0, Lj5/e0;->o:Lcom/google/android/gms/internal/firebase_auth/zzff;

    const-string v1, ""

    if-eqz v0, :cond_1f

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase_auth/zzff;->Z3()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lj5/l;->a(Ljava/lang/String;)Lg5/u;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 4
    invoke-virtual {v0}, Lg5/u;->b()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 5
    :cond_1f
    invoke-virtual {p0}, Lg5/s;->a4()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-gt v0, v2, :cond_35

    if-eqz v1, :cond_36

    const-string v0, "custom"

    .line 6
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_35

    goto :goto_36

    :cond_35
    const/4 v2, 0x0

    .line 7
    :cond_36
    :goto_36
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lj5/e0;->v:Ljava/lang/Boolean;

    .line 8
    :cond_3c
    iget-object v0, p0, Lj5/e0;->v:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final f()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lj5/a0;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lj5/e0;->s:Ljava/util/List;

    return-object v0
.end method

.method public final f4(Ljava/util/List;)Lg5/s;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lg5/j0;",
            ">;)",
            "Lg5/s;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lj5/e0;->s:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lj5/e0;->t:Ljava/util/List;

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 4
    :goto_1b
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4c

    .line 5
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg5/j0;

    .line 6
    invoke-interface {v2}, Lg5/j0;->O1()Ljava/lang/String;

    move-result-object v3

    const-string v4, "firebase"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_39

    .line 7
    move-object v3, v2

    check-cast v3, Lj5/a0;

    iput-object v3, p0, Lj5/e0;->p:Lj5/a0;

    goto :goto_42

    .line 8
    :cond_39
    iget-object v3, p0, Lj5/e0;->t:Ljava/util/List;

    invoke-interface {v2}, Lg5/j0;->O1()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    :goto_42
    iget-object v3, p0, Lj5/e0;->s:Ljava/util/List;

    check-cast v2, Lj5/a0;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    .line 10
    :cond_4c
    iget-object p1, p0, Lj5/e0;->p:Lj5/a0;

    if-nez p1, :cond_5a

    .line 11
    iget-object p1, p0, Lj5/e0;->s:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lj5/a0;

    iput-object p1, p0, Lj5/e0;->p:Lj5/a0;

    :cond_5a
    return-object p0
.end method

.method public final g4()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lj5/e0;->t:Ljava/util/List;

    return-object v0
.end method

.method public final h4(Lcom/google/android/gms/internal/firebase_auth/zzff;)V
    .registers 2

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase_auth/zzff;

    iput-object p1, p0, Lj5/e0;->o:Lcom/google/android/gms/internal/firebase_auth/zzff;

    return-void
.end method

.method public final synthetic i4()Lg5/s;
    .registers 2

    .line 1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lj5/e0;->v:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final j4(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lg5/z;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lj5/m;->V3(Ljava/util/List;)Lj5/m;

    move-result-object p1

    iput-object p1, p0, Lj5/e0;->z:Lj5/m;

    return-void
.end method

.method public final k4()Lb5/g;
    .registers 2

    .line 1
    iget-object v0, p0, Lj5/e0;->q:Ljava/lang/String;

    invoke-static {v0}, Lb5/g;->n(Ljava/lang/String;)Lb5/g;

    move-result-object v0

    return-object v0
.end method

.method public final l4()Ljava/lang/String;
    .registers 4

    .line 1
    iget-object v0, p0, Lj5/e0;->o:Lcom/google/android/gms/internal/firebase_auth/zzff;

    const/4 v1, 0x0

    if-eqz v0, :cond_2c

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase_auth/zzff;->Z3()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2c

    .line 2
    iget-object v0, p0, Lj5/e0;->o:Lcom/google/android/gms/internal/firebase_auth/zzff;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase_auth/zzff;->Z3()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lj5/l;->a(Ljava/lang/String;)Lg5/u;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lg5/u;->a()Ljava/util/Map;

    move-result-object v0

    const-string v2, "firebase"

    .line 5
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_2c

    const-string v1, "tenant"

    .line 6
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    :cond_2c
    return-object v1
.end method

.method public final m4()Lcom/google/android/gms/internal/firebase_auth/zzff;
    .registers 2

    .line 1
    iget-object v0, p0, Lj5/e0;->o:Lcom/google/android/gms/internal/firebase_auth/zzff;

    return-object v0
.end method

.method public final n4()Ljava/lang/String;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lg5/s;->m4()Lcom/google/android/gms/internal/firebase_auth/zzff;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase_auth/zzff;->Z3()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final o4(Ljava/lang/String;)Lj5/e0;
    .registers 2

    .line 1
    iput-object p1, p0, Lj5/e0;->u:Ljava/lang/String;

    return-object p0
.end method

.method public final p4(Lg5/o0;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lj5/e0;->y:Lg5/o0;

    return-void
.end method

.method public final q4(Lj5/g0;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lj5/e0;->w:Lj5/g0;

    return-void
.end method

.method public final r4(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lj5/e0;->x:Z

    return-void
.end method

.method public final s4()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lj5/e0;->x:Z

    return v0
.end method

.method public final t4()Lg5/o0;
    .registers 2

    .line 1
    iget-object v0, p0, Lj5/e0;->y:Lg5/o0;

    return-object v0
.end method

.method public final u4()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lg5/z;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lj5/e0;->z:Lj5/m;

    if-eqz v0, :cond_9

    .line 2
    invoke-virtual {v0}, Lj5/m;->W3()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 3
    :cond_9
    invoke-static {}, Lcom/google/android/gms/internal/firebase_auth/zzbg;->m()Lcom/google/android/gms/internal/firebase_auth/zzbg;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 7

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->a(Landroid/os/Parcel;)I

    move-result v0

    .line 2
    invoke-virtual {p0}, Lg5/s;->m4()Lcom/google/android/gms/internal/firebase_auth/zzff;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 3
    invoke-static {p1, v2, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->s(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 4
    iget-object v1, p0, Lj5/e0;->p:Lj5/a0;

    const/4 v2, 0x2

    .line 5
    invoke-static {p1, v2, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->s(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 6
    iget-object v1, p0, Lj5/e0;->q:Ljava/lang/String;

    const/4 v2, 0x3

    .line 7
    invoke-static {p1, v2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->t(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 8
    iget-object v1, p0, Lj5/e0;->r:Ljava/lang/String;

    const/4 v2, 0x4

    .line 9
    invoke-static {p1, v2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->t(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 10
    iget-object v1, p0, Lj5/e0;->s:Ljava/util/List;

    const/4 v2, 0x5

    .line 11
    invoke-static {p1, v2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->x(Landroid/os/Parcel;ILjava/util/List;Z)V

    .line 12
    invoke-virtual {p0}, Lg5/s;->g4()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x6

    .line 13
    invoke-static {p1, v2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->v(Landroid/os/Parcel;ILjava/util/List;Z)V

    .line 14
    iget-object v1, p0, Lj5/e0;->u:Ljava/lang/String;

    const/4 v2, 0x7

    .line 15
    invoke-static {p1, v2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->t(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 16
    invoke-virtual {p0}, Lg5/s;->c4()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0x8

    .line 17
    invoke-static {p1, v2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->e(Landroid/os/Parcel;ILjava/lang/Boolean;Z)V

    .line 18
    invoke-virtual {p0}, Lg5/s;->X3()Lg5/t;

    move-result-object v1

    const/16 v2, 0x9

    .line 19
    invoke-static {p1, v2, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->s(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 20
    iget-boolean v1, p0, Lj5/e0;->x:Z

    const/16 v2, 0xa

    .line 21
    invoke-static {p1, v2, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->c(Landroid/os/Parcel;IZ)V

    .line 22
    iget-object v1, p0, Lj5/e0;->y:Lg5/o0;

    const/16 v2, 0xb

    .line 23
    invoke-static {p1, v2, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->s(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 24
    iget-object v1, p0, Lj5/e0;->z:Lj5/m;

    const/16 v2, 0xc

    .line 25
    invoke-static {p1, v2, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->s(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 26
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->b(Landroid/os/Parcel;I)V

    return-void
.end method
