###### Class com.google.android.gms.internal.drive.zzky (com.google.android.gms.internal.drive.zzky)
.class public final Lcom/google/android/gms/internal/drive/zzky;
.super Lcom/google/android/gms/internal/drive/zziw;

# interfaces
.implements Lcom/google/android/gms/internal/drive/zzkz;
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/drive/zziw<",
        "Ljava/lang/String;",
        ">;",
        "Lcom/google/android/gms/internal/drive/zzkz;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# static fields
.field private static final q:Lcom/google/android/gms/internal/drive/zzky;

.field private static final r:Lcom/google/android/gms/internal/drive/zzkz;


# instance fields
.field private final p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/drive/zzky;

    invoke-direct {v0}, Lcom/google/android/gms/internal/drive/zzky;-><init>()V

    .line 2
    sput-object v0, Lcom/google/android/gms/internal/drive/zzky;->q:Lcom/google/android/gms/internal/drive/zzky;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/drive/zziw;->C2()V

    .line 3
    sput-object v0, Lcom/google/android/gms/internal/drive/zzky;->r:Lcom/google/android/gms/internal/drive/zzkz;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/16 v0, 0xa

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/drive/zzky;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/drive/zzky;-><init>(Ljava/util/ArrayList;)V

    return-void
.end method

.method private constructor <init>(Ljava/util/ArrayList;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/internal/drive/zziw;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/drive/zzky;->p:Ljava/util/List;

    return-void
.end method

.method private static g(Ljava/lang/Object;)Ljava/lang/String;
    .registers 2

    .line 1
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 2
    check-cast p0, Ljava/lang/String;

    return-object p0

    .line 3
    :cond_7
    instance-of v0, p0, Lcom/google/android/gms/internal/drive/zzjc;

    if-eqz v0, :cond_12

    .line 4
    check-cast p0, Lcom/google/android/gms/internal/drive/zzjc;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/drive/zzjc;->n()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 5
    :cond_12
    check-cast p0, [B

    invoke-static {p0}, Lcom/google/android/gms/internal/drive/zzkm;->h([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final F0()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzky;->p:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic X0()Z
    .registers 2

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/internal/drive/zziw;->X0()Z

    move-result v0

    return v0
.end method

.method public final synthetic add(ILjava/lang/Object;)V
    .registers 4

    .line 1
    check-cast p2, Ljava/lang/String;

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/drive/zziw;->c()V

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzky;->p:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 4
    iget p1, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Ljava/util/AbstractList;->modCount:I

    return-void
.end method

.method public final addAll(ILjava/util/Collection;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/drive/zziw;->c()V

    .line 3
    instance-of v0, p2, Lcom/google/android/gms/internal/drive/zzkz;

    if-eqz v0, :cond_d

    check-cast p2, Lcom/google/android/gms/internal/drive/zzkz;

    invoke-interface {p2}, Lcom/google/android/gms/internal/drive/zzkz;->F0()Ljava/util/List;

    move-result-object p2

    .line 4
    :cond_d
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzky;->p:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    move-result p1

    .line 5
    iget p2, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Ljava/util/AbstractList;->modCount:I

    return p1
.end method

.method public final addAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/drive/zzky;->size()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/drive/zziw;->addAll(ILjava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public final b3(I)Ljava/lang/Object;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzky;->p:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final clear()V
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/drive/zziw;->c()V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzky;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3
    iget v0, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/AbstractList;->modCount:I

    return-void
.end method

.method public final bridge synthetic equals(Ljava/lang/Object;)Z
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/drive/zziw;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final f3()Lcom/google/android/gms/internal/drive/zzkz;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/drive/zziw;->X0()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/drive/zzna;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/drive/zzna;-><init>(Lcom/google/android/gms/internal/drive/zzkz;)V

    return-object v0

    :cond_c
    return-object p0
.end method

.method public final synthetic get(I)Ljava/lang/Object;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzky;->p:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_d

    .line 3
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 4
    :cond_d
    instance-of v1, v0, Lcom/google/android/gms/internal/drive/zzjc;

    if-eqz v1, :cond_23

    .line 5
    check-cast v0, Lcom/google/android/gms/internal/drive/zzjc;

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/drive/zzjc;->n()Ljava/lang/String;

    move-result-object v1

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/drive/zzjc;->o()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzky;->p:Ljava/util/List;

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_22
    return-object v1

    .line 9
    :cond_23
    check-cast v0, [B

    .line 10
    invoke-static {v0}, Lcom/google/android/gms/internal/drive/zzkm;->h([B)Ljava/lang/String;

    move-result-object v1

    .line 11
    invoke-static {v0}, Lcom/google/android/gms/internal/drive/zzkm;->f([B)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzky;->p:Ljava/util/List;

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_34
    return-object v1
.end method

.method public final bridge synthetic hashCode()I
    .registers 2

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/internal/drive/zziw;->hashCode()I

    move-result v0

    return v0
.end method

.method public final synthetic remove(I)Ljava/lang/Object;
    .registers 3

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/drive/zziw;->c()V

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzky;->p:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    .line 4
    iget v0, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/AbstractList;->modCount:I

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/internal/drive/zzky;->g(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic remove(Ljava/lang/Object;)Z
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/drive/zziw;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final bridge synthetic removeAll(Ljava/util/Collection;)Z
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/drive/zziw;->removeAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public final bridge synthetic retainAll(Ljava/util/Collection;)Z
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/drive/zziw;->retainAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public final synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 1
    check-cast p2, Ljava/lang/String;

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/drive/zziw;->c()V

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzky;->p:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/internal/drive/zzky;->g(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final size()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzky;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final synthetic x2(I)Lcom/google/android/gms/internal/drive/zzkp;
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/drive/zzky;->size()I

    move-result v0

    if-lt p1, v0, :cond_16

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    .line 3
    iget-object p1, p0, Lcom/google/android/gms/internal/drive/zzky;->p:Ljava/util/List;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 4
    new-instance p1, Lcom/google/android/gms/internal/drive/zzky;

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/drive/zzky;-><init>(Ljava/util/ArrayList;)V

    return-object p1

    .line 5
    :cond_16
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method
