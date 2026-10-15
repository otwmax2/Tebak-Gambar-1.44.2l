###### Class androidx.lifecycle.z (androidx.lifecycle.z)
.class public final Landroidx/lifecycle/z;
.super Ljava/lang/Object;
.source "SavedStateHandle.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/lifecycle/z$a;
    }
.end annotation


# static fields
.field public static final f:Landroidx/lifecycle/z$a;

.field private static final g:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "La1/c$c;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lkotlinx/coroutines/flow/k<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private final e:La1/c$c;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    new-instance v0, Landroidx/lifecycle/z$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/lifecycle/z$a;-><init>(Lt9/g;)V

    sput-object v0, Landroidx/lifecycle/z;->f:Landroidx/lifecycle/z$a;

    const/16 v0, 0x1d

    new-array v0, v0, [Ljava/lang/Class;

    .line 1
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-class v2, [Z

    aput-object v2, v0, v1

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const/4 v1, 0x3

    const-class v2, [D

    aput-object v2, v0, v1

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const/4 v2, 0x5

    const-class v3, [I

    aput-object v3, v0, v2

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x6

    aput-object v2, v0, v3

    const/4 v2, 0x7

    const-class v3, [J

    aput-object v3, v0, v2

    const/16 v2, 0x8

    const-class v3, Ljava/lang/String;

    aput-object v3, v0, v2

    const/16 v2, 0x9

    const-class v3, [Ljava/lang/String;

    aput-object v3, v0, v2

    const/16 v2, 0xa

    const-class v3, Landroid/os/Binder;

    aput-object v3, v0, v2

    const/16 v2, 0xb

    const-class v3, Landroid/os/Bundle;

    aput-object v3, v0, v2

    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    const/16 v3, 0xc

    aput-object v2, v0, v3

    const/16 v2, 0xd

    const-class v3, [B

    aput-object v3, v0, v2

    sget-object v2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    const/16 v3, 0xe

    aput-object v2, v0, v3

    const/16 v2, 0xf

    const-class v3, [C

    aput-object v3, v0, v2

    const/16 v2, 0x10

    const-class v3, Ljava/lang/CharSequence;

    aput-object v3, v0, v2

    const/16 v2, 0x11

    const-class v3, [Ljava/lang/CharSequence;

    aput-object v3, v0, v2

    const/16 v2, 0x12

    const-class v3, Ljava/util/ArrayList;

    aput-object v3, v0, v2

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/16 v3, 0x13

    aput-object v2, v0, v3

    const/16 v2, 0x14

    const-class v3, [F

    aput-object v3, v0, v2

    const-class v2, Landroid/os/Parcelable;

    const/16 v3, 0x15

    aput-object v2, v0, v3

    const/16 v2, 0x16

    const-class v4, [Landroid/os/Parcelable;

    aput-object v4, v0, v2

    const/16 v2, 0x17

    const-class v4, Ljava/io/Serializable;

    aput-object v4, v0, v2

    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    const/16 v4, 0x18

    aput-object v2, v0, v4

    const/16 v2, 0x19

    const-class v4, [S

    aput-object v4, v0, v2

    const/16 v2, 0x1a

    const-class v4, Landroid/util/SparseArray;

    aput-object v4, v0, v2

    .line 2
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v3, :cond_ad

    const-class v4, Landroid/util/Size;

    goto :goto_ae

    :cond_ad
    move-object v4, v1

    :goto_ae
    const/16 v5, 0x1b

    aput-object v4, v0, v5

    const/16 v4, 0x1c

    if-lt v2, v3, :cond_b8

    .line 3
    const-class v1, Landroid/util/SizeF;

    :cond_b8
    aput-object v1, v0, v4

    .line 4
    sput-object v0, Landroidx/lifecycle/z;->g:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Landroidx/lifecycle/z;->a:Ljava/util/Map;

    .line 10
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Landroidx/lifecycle/z;->b:Ljava/util/Map;

    .line 11
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Landroidx/lifecycle/z;->c:Ljava/util/Map;

    .line 12
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Landroidx/lifecycle/z;->d:Ljava/util/Map;

    .line 13
    new-instance v0, Landroidx/lifecycle/y;

    invoke-direct {v0, p0}, Landroidx/lifecycle/y;-><init>(Landroidx/lifecycle/z;)V

    iput-object v0, p0, Landroidx/lifecycle/z;->e:La1/c$c;

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "initialState"

    invoke-static {p1, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Landroidx/lifecycle/z;->a:Ljava/util/Map;

    .line 3
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, p0, Landroidx/lifecycle/z;->b:Ljava/util/Map;

    .line 4
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, p0, Landroidx/lifecycle/z;->c:Ljava/util/Map;

    .line 5
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, p0, Landroidx/lifecycle/z;->d:Ljava/util/Map;

    .line 6
    new-instance v1, Landroidx/lifecycle/y;

    invoke-direct {v1, p0}, Landroidx/lifecycle/y;-><init>(Landroidx/lifecycle/z;)V

    iput-object v1, p0, Landroidx/lifecycle/z;->e:La1/c$c;

    .line 7
    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public static synthetic a(Landroidx/lifecycle/z;)Landroid/os/Bundle;
    .registers 1

    invoke-static {p0}, Landroidx/lifecycle/z;->e(Landroidx/lifecycle/z;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic b()[Ljava/lang/Class;
    .registers 1

    .line 1
    sget-object v0, Landroidx/lifecycle/z;->g:[Ljava/lang/Class;

    return-object v0
.end method

.method public static final c(Landroid/os/Bundle;Landroid/os/Bundle;)Landroidx/lifecycle/z;
    .registers 3

    sget-object v0, Landroidx/lifecycle/z;->f:Landroidx/lifecycle/z$a;

    invoke-virtual {v0, p0, p1}, Landroidx/lifecycle/z$a;->a(Landroid/os/Bundle;Landroid/os/Bundle;)Landroidx/lifecycle/z;

    move-result-object p0

    return-object p0
.end method

.method private static final e(Landroidx/lifecycle/z;)Landroid/os/Bundle;
    .registers 6

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Landroidx/lifecycle/z;->b:Ljava/util/Map;

    invoke-static {v0}, Li9/a0;->l(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_33

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, La1/c$c;

    .line 3
    invoke-interface {v1}, La1/c$c;->a()Landroid/os/Bundle;

    move-result-object v1

    .line 4
    invoke-virtual {p0, v2, v1}, Landroidx/lifecycle/z;->f(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_13

    .line 5
    :cond_33
    iget-object v0, p0, Landroidx/lifecycle/z;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 6
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 7
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 8
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_68

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 9
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    iget-object v4, p0, Landroidx/lifecycle/z;->a:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4f

    :cond_68
    const/4 p0, 0x2

    new-array p0, p0, [Lh9/m;

    const/4 v0, 0x0

    const-string v3, "keys"

    .line 11
    invoke-static {v3, v1}, Lh9/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Lh9/m;

    move-result-object v1

    aput-object v1, p0, v0

    const/4 v0, 0x1

    const-string v1, "values"

    invoke-static {v1, v2}, Lh9/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Lh9/m;

    move-result-object v1

    aput-object v1, p0, v0

    invoke-static {p0}, Landroidx/core/os/d;->a([Lh9/m;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final d()La1/c$c;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/lifecycle/z;->e:La1/c$c;

    return-object v0
.end method

.method public final f(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Landroidx/lifecycle/z;->f:Landroidx/lifecycle/z$a;

    invoke-virtual {v0, p2}, Landroidx/lifecycle/z$a;->b(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 2
    iget-object v0, p0, Landroidx/lifecycle/z;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Landroidx/lifecycle/t;

    if-eqz v1, :cond_1a

    check-cast v0, Landroidx/lifecycle/t;

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    :goto_1b
    if-eqz v0, :cond_21

    .line 3
    invoke-virtual {v0, p2}, Landroidx/lifecycle/t;->n(Ljava/lang/Object;)V

    goto :goto_26

    .line 4
    :cond_21
    iget-object v0, p0, Landroidx/lifecycle/z;->a:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    :goto_26
    iget-object v0, p0, Landroidx/lifecycle/z;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlinx/coroutines/flow/k;

    if-nez p1, :cond_31

    goto :goto_34

    :cond_31
    invoke-interface {p1, p2}, Lkotlinx/coroutines/flow/k;->setValue(Ljava/lang/Object;)V

    :goto_34
    return-void

    .line 6
    :cond_35
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can\'t put value with type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lt9/m;->b(Ljava/lang/Object;)V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " into saved state"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 8
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

###### Class androidx.lifecycle.z.a (androidx.lifecycle.z$a)
.class public final Landroidx/lifecycle/z$a;
.super Ljava/lang/Object;
.source "SavedStateHandle.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/lifecycle/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lt9/g;)V
    .registers 2

    invoke-direct {p0}, Landroidx/lifecycle/z$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/os/Bundle;Landroid/os/Bundle;)Landroidx/lifecycle/z;
    .registers 8

    if-nez p1, :cond_37

    if-nez p2, :cond_a

    .line 1
    new-instance p1, Landroidx/lifecycle/z;

    invoke-direct {p1}, Landroidx/lifecycle/z;-><init>()V

    goto :goto_36

    .line 2
    :cond_a
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 3
    invoke-virtual {p2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "key"

    .line 4
    invoke-static {v1, v2}, Lt9/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_17

    .line 5
    :cond_30
    new-instance p2, Landroidx/lifecycle/z;

    invoke-direct {p2, p1}, Landroidx/lifecycle/z;-><init>(Ljava/util/Map;)V

    move-object p1, p2

    :goto_36
    return-object p1

    :cond_37
    const-string p2, "keys"

    .line 6
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p2

    const-string v0, "values"

    .line 7
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p2, :cond_54

    if-eqz p1, :cond_54

    .line 8
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v1, v2, :cond_54

    const/4 v1, 0x1

    goto :goto_55

    :cond_54
    const/4 v1, 0x0

    :goto_55
    if-eqz v1, :cond_7d

    .line 9
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 10
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_60
    if-ge v0, v2, :cond_77

    .line 11
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "null cannot be cast to non-null type kotlin.String"

    invoke-static {v3, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_60

    .line 12
    :cond_77
    new-instance p1, Landroidx/lifecycle/z;

    invoke-direct {p1, v1}, Landroidx/lifecycle/z;-><init>(Ljava/util/Map;)V

    return-object p1

    .line 13
    :cond_7d
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Invalid bundle passed as restored state"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_8a

    :goto_89
    throw p1

    :goto_8a
    goto :goto_89
.end method

.method public final b(Ljava/lang/Object;)Z
    .registers 8

    const/4 v0, 0x1

    if-nez p1, :cond_4

    return v0

    .line 1
    :cond_4
    invoke-static {}, Landroidx/lifecycle/z;->b()[Ljava/lang/Class;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_b
    if-ge v4, v2, :cond_1c

    aget-object v5, v1, v4

    .line 2
    invoke-static {v5}, Lt9/m;->b(Ljava/lang/Object;)V

    invoke-virtual {v5, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_19

    return v0

    :cond_19
    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    :cond_1c
    return v3
.end method

###### Class androidx.lifecycle.y (androidx.lifecycle.y)
.class public final synthetic Landroidx/lifecycle/y;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements La1/c$c;


# instance fields
.field public final synthetic a:Landroidx/lifecycle/z;


# direct methods
.method public synthetic constructor <init>(Landroidx/lifecycle/z;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/lifecycle/y;->a:Landroidx/lifecycle/z;

    return-void
.end method


# virtual methods
.method public final a()Landroid/os/Bundle;
    .registers 2

    iget-object v0, p0, Landroidx/lifecycle/y;->a:Landroidx/lifecycle/z;

    invoke-static {v0}, Landroidx/lifecycle/z;->a(Landroidx/lifecycle/z;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method
