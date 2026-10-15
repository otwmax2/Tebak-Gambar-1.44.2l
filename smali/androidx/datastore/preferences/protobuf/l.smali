###### Class androidx.datastore.preferences.protobuf.l (androidx.datastore.preferences.protobuf.l)
.class final Landroidx/datastore/preferences/protobuf/l;
.super Ljava/lang/Object;
.source "CodedOutputStreamWriter.java"

# interfaces
.implements Landroidx/datastore/preferences/protobuf/u1;


# instance fields
.field private final a:Landroidx/datastore/preferences/protobuf/k;


# direct methods
.method private constructor <init>(Landroidx/datastore/preferences/protobuf/k;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "output"

    .line 2
    invoke-static {p1, v0}, Landroidx/datastore/preferences/protobuf/a0;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/datastore/preferences/protobuf/k;

    iput-object p1, p0, Landroidx/datastore/preferences/protobuf/l;->a:Landroidx/datastore/preferences/protobuf/k;

    .line 3
    iput-object p0, p1, Landroidx/datastore/preferences/protobuf/k;->a:Landroidx/datastore/preferences/protobuf/l;

    return-void
.end method

.method public static P(Landroidx/datastore/preferences/protobuf/k;)Landroidx/datastore/preferences/protobuf/l;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/k;->a:Landroidx/datastore/preferences/protobuf/l;

    if-eqz v0, :cond_5

    return-object v0

    .line 2
    :cond_5
    new-instance v0, Landroidx/datastore/preferences/protobuf/l;

    invoke-direct {v0, p0}, Landroidx/datastore/preferences/protobuf/l;-><init>(Landroidx/datastore/preferences/protobuf/k;)V

    return-object v0
.end method

.method private Q(IZLjava/lang/Object;Landroidx/datastore/preferences/protobuf/k0$a;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(IZTV;",
            "Landroidx/datastore/preferences/protobuf/k0$a<",
            "Ljava/lang/Boolean;",
            "TV;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/l;->a:Landroidx/datastore/preferences/protobuf/k;

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Landroidx/datastore/preferences/protobuf/k;->W0(II)V

    .line 2
    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/l;->a:Landroidx/datastore/preferences/protobuf/k;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p4, v0, p3}, Landroidx/datastore/preferences/protobuf/k0;->b(Landroidx/datastore/preferences/protobuf/k0$a;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/datastore/preferences/protobuf/k;->Y0(I)V

    .line 3
    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/l;->a:Landroidx/datastore/preferences/protobuf/k;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-static {p1, p4, p2, p3}, Landroidx/datastore/preferences/protobuf/k0;->e(Landroidx/datastore/preferences/protobuf/k;Landroidx/datastore/preferences/protobuf/k0$a;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private R(ILandroidx/datastore/preferences/protobuf/k0$a;Ljava/util/Map;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(I",
            "Landroidx/datastore/preferences/protobuf/k0$a<",
            "Ljava/lang/Integer;",
            "TV;>;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "TV;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface {p3}, Ljava/util/Map;->size()I

    move-result v0

    new-array v1, v0, [I

    .line 2
    invoke-interface {p3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_26

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/lit8 v6, v4, 0x1

    .line 3
    aput v5, v1, v4

    move v4, v6

    goto :goto_10

    .line 4
    :cond_26
    invoke-static {v1}, Ljava/util/Arrays;->sort([I)V

    :goto_29
    if-ge v3, v0, :cond_54

    .line 5
    aget v2, v1, v3

    .line 6
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 7
    iget-object v5, p0, Landroidx/datastore/preferences/protobuf/l;->a:Landroidx/datastore/preferences/protobuf/k;

    const/4 v6, 0x2

    invoke-virtual {v5, p1, v6}, Landroidx/datastore/preferences/protobuf/k;->W0(II)V

    .line 8
    iget-object v5, p0, Landroidx/datastore/preferences/protobuf/l;->a:Landroidx/datastore/preferences/protobuf/k;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {p2, v6, v4}, Landroidx/datastore/preferences/protobuf/k0;->b(Landroidx/datastore/preferences/protobuf/k0$a;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroidx/datastore/preferences/protobuf/k;->Y0(I)V

    .line 9
    iget-object v5, p0, Landroidx/datastore/preferences/protobuf/l;->a:Landroidx/datastore/preferences/protobuf/k;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v5, p2, v2, v4}, Landroidx/datastore/preferences/protobuf/k0;->e(Landroidx/datastore/preferences/protobuf/k;Landroidx/datastore/preferences/protobuf/k0$a;Ljava/lang/Object;Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_29

    :cond_54
    return-void
.end method

.method private S(ILandroidx/datastore/preferences/protobuf/k0$a;Ljava/util/Map;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(I",
            "Landroidx/datastore/preferences/protobuf/k0$a<",
            "Ljava/lang/Long;",
            "TV;>;",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "TV;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface {p3}, Ljava/util/Map;->size()I

    move-result v0

    new-array v1, v0, [J

    .line 2
    invoke-interface {p3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_26

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    add-int/lit8 v7, v4, 0x1

    .line 3
    aput-wide v5, v1, v4

    move v4, v7

    goto :goto_10

    .line 4
    :cond_26
    invoke-static {v1}, Ljava/util/Arrays;->sort([J)V

    :goto_29
    if-ge v3, v0, :cond_54

    .line 5
    aget-wide v4, v1, v3

    .line 6
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 7
    iget-object v6, p0, Landroidx/datastore/preferences/protobuf/l;->a:Landroidx/datastore/preferences/protobuf/k;

    const/4 v7, 0x2

    invoke-virtual {v6, p1, v7}, Landroidx/datastore/preferences/protobuf/k;->W0(II)V

    .line 8
    iget-object v6, p0, Landroidx/datastore/preferences/protobuf/l;->a:Landroidx/datastore/preferences/protobuf/k;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {p2, v7, v2}, Landroidx/datastore/preferences/protobuf/k0;->b(Landroidx/datastore/preferences/protobuf/k0$a;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroidx/datastore/preferences/protobuf/k;->Y0(I)V

    .line 9
    iget-object v6, p0, Landroidx/datastore/preferences/protobuf/l;->a:Landroidx/datastore/preferences/protobuf/k;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v6, p2, v4, v2}, Landroidx/datastore/preferences/protobuf/k0;->e(Landroidx/datastore/preferences/protobuf/k;Landroidx/datastore/preferences/protobuf/k0$a;Ljava/lang/Object;Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_29

    :cond_54
    return-void
.end method

.method private T(ILandroidx/datastore/preferences/protobuf/k0$a;Ljava/util/Map;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(I",
            "Landroidx/datastore/preferences/protobuf/k0$a<",
            "TK;TV;>;",
            "Ljava/util/Map<",
            "TK;TV;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Landroidx/datastore/preferences/protobuf/l$a;->a:[I

    iget-object v1, p2, Landroidx/datastore/preferences/protobuf/k0$a;->a:Landroidx/datastore/preferences/protobuf/t1$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_4c

    .line 2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "does not support key type: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Landroidx/datastore/preferences/protobuf/k0$a;->a:Landroidx/datastore/preferences/protobuf/t1$b;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :pswitch_26
    invoke-direct {p0, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/l;->U(ILandroidx/datastore/preferences/protobuf/k0$a;Ljava/util/Map;)V

    goto :goto_4a

    .line 4
    :pswitch_2a
    invoke-direct {p0, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/l;->S(ILandroidx/datastore/preferences/protobuf/k0$a;Ljava/util/Map;)V

    goto :goto_4a

    .line 5
    :pswitch_2e
    invoke-direct {p0, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/l;->R(ILandroidx/datastore/preferences/protobuf/k0$a;Ljava/util/Map;)V

    goto :goto_4a

    .line 6
    :pswitch_32
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3e

    const/4 v1, 0x0

    .line 7
    invoke-direct {p0, p1, v1, v0, p2}, Landroidx/datastore/preferences/protobuf/l;->Q(IZLjava/lang/Object;Landroidx/datastore/preferences/protobuf/k0$a;)V

    .line 8
    :cond_3e
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_4a

    const/4 v0, 0x1

    .line 9
    invoke-direct {p0, p1, v0, p3, p2}, Landroidx/datastore/preferences/protobuf/l;->Q(IZLjava/lang/Object;Landroidx/datastore/preferences/protobuf/k0$a;)V

    :cond_4a
    :goto_4a
    return-void

    nop

    :pswitch_data_4c
    .packed-switch 0x1
        :pswitch_32
        :pswitch_2e
        :pswitch_2e
        :pswitch_2e
        :pswitch_2e
        :pswitch_2e
        :pswitch_2a
        :pswitch_2a
        :pswitch_2a
        :pswitch_2a
        :pswitch_2a
        :pswitch_26
    .end packed-switch
.end method

.method private U(ILandroidx/datastore/preferences/protobuf/k0$a;Ljava/util/Map;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(I",
            "Landroidx/datastore/preferences/protobuf/k0$a<",
            "Ljava/lang/String;",
            "TV;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TV;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface {p3}, Ljava/util/Map;->size()I

    move-result v0

    new-array v1, v0, [Ljava/lang/String;

    .line 2
    invoke-interface {p3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_22

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    add-int/lit8 v6, v4, 0x1

    .line 3
    aput-object v5, v1, v4

    move v4, v6

    goto :goto_10

    .line 4
    :cond_22
    invoke-static {v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    :goto_25
    if-ge v3, v0, :cond_44

    .line 5
    aget-object v2, v1, v3

    .line 6
    invoke-interface {p3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 7
    iget-object v5, p0, Landroidx/datastore/preferences/protobuf/l;->a:Landroidx/datastore/preferences/protobuf/k;

    const/4 v6, 0x2

    invoke-virtual {v5, p1, v6}, Landroidx/datastore/preferences/protobuf/k;->W0(II)V

    .line 8
    iget-object v5, p0, Landroidx/datastore/preferences/protobuf/l;->a:Landroidx/datastore/preferences/protobuf/k;

    invoke-static {p2, v2, v4}, Landroidx/datastore/preferences/protobuf/k0;->b(Landroidx/datastore/preferences/protobuf/k0$a;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroidx/datastore/preferences/protobuf/k;->Y0(I)V

    .line 9
    iget-object v5, p0, Landroidx/datastore/preferences/protobuf/l;->a:Landroidx/datastore/preferences/protobuf/k;

    invoke-static {v5, p2, v2, v4}, Landroidx/datastore/preferences/protobuf/k0;->e(Landroidx/datastore/preferences/protobuf/k;Landroidx/datastore/preferences/protobuf/k0$a;Ljava/lang/Object;Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_25

    :cond_44
    return-void
.end method

.method private V(ILjava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_c

    .line 2
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/l;->a:Landroidx/datastore/preferences/protobuf/k;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Landroidx/datastore/preferences/protobuf/k;->U0(ILjava/lang/String;)V

    goto :goto_13

    .line 3
    :cond_c
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/l;->a:Landroidx/datastore/preferences/protobuf/k;

    check-cast p2, Landroidx/datastore/preferences/protobuf/h;

    invoke-virtual {v0, p1, p2}, Landroidx/datastore/preferences/protobuf/k;->o0(ILandroidx/datastore/preferences/protobuf/h;)V

    :goto_13
    return-void
.end method


# virtual methods
.method public A(ILjava/util/List;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_40

    .line 1
    iget-object p3, p0, Landroidx/datastore/preferences/protobuf/l;->a:Landroidx/datastore/preferences/protobuf/k;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Landroidx/datastore/preferences/protobuf/k;->W0(II)V

    const/4 p1, 0x0

    const/4 p3, 0x0

    .line 2
    :goto_b
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_23

    .line 3
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v1}, Landroidx/datastore/preferences/protobuf/k;->e(Z)I

    move-result v1

    add-int/2addr p3, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_b

    .line 4
    :cond_23
    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/l;->a:Landroidx/datastore/preferences/protobuf/k;

    invoke-virtual {p1, p3}, Landroidx/datastore/preferences/protobuf/k;->Y0(I)V

    .line 5
    :goto_28
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_58

    .line 6
    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/l;->a:Landroidx/datastore/preferences/protobuf/k;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    invoke-virtual {p1, p3}, Landroidx/datastore/preferences/protobuf/k;->l0(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_28

    .line 7
    :cond_40
    :goto_40
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_58

    .line 8
    iget-object p3, p0, Landroidx/datastore/preferences/protobuf/l;->a:Landroidx/datastore/preferences/protobuf/k;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p3, p1, v1}, Landroidx/datastore/preferences/protobuf/k;->k0(IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_40

    :cond_58
    return-void
.end method

.method public B(ILjava/util/List;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_40

    .line 1
    iget-object p3, p0, Landroidx/datastore/preferences/protobuf/l;->a:Landroidx/datastore/preferences/protobuf/k;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Landroidx/datastore/preferences/protobuf/k;->W0(II)V

    const/4 p1, 0x0

    const/4 p3, 0x0

    .line 2
    :goto_b
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_23

    .line 3
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Landroidx/datastore/preferences/protobuf/k;->X(I)I

    move-result v1

    add-int/2addr p3, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_b

    .line 4
    :cond_23
    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/l;->a:Landroidx/datastore/preferences/protobuf/k;

    invoke-virtual {p1, p3}, Landroidx/datastore/preferences/protobuf/k;->Y0(I)V

    .line 5
    :goto_28
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_58

    .line 6
    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/l;->a:Landroidx/datastore/preferences/protobuf/k;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {p1, p3}, Landroidx/datastore/preferences/protobuf/k;->Y0(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_28

    .line 7
    :cond_40
    :goto_40
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_58

    .line 8
    iget-object p3, p0, Landroidx/datastore/preferences/protobuf/l;->a:Landroidx/datastore/preferences/protobuf/k;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p3, p1, v1}, Landroidx/datastore/preferences/protobuf/k;->X0(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_40

    :cond_58
    return-void
.end method

.method public C(ILjava/util/List;Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_40

    .line 1
    iget-object p3, p0, Landroidx/datastore/preferences/protobuf/l;->a:Landroidx/datastore/preferences/protobuf/k;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Landroidx/datastore/preferences/protobuf/k;->W0(II)V

    const/4 p1, 0x0

    const/4 p3, 0x0

    .line 2
    :goto_b
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_23

    .line 3
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Landroidx/datastore/preferences/protobuf/k;->S(J)I

    move-result v1

    add-int/2addr p3, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_b

    .line 4
    :cond_23
    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/l;->a:Landroidx/datastore/preferences/protobuf/k;

    invoke-virtual {p1, p3}, Landroidx/datastore/preferences/protobuf/k;->Y0(I)V

    .line 5
    :goto_28
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_58

    .line 6
    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/l;->a:Landroidx/datastore/preferences/protobuf/k;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Landroidx/datastore/preferences/protobuf/k;->T0(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_28

    .line 7
    :cond_40
    :goto_40
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_58

    .line 8
    iget-object p3, p0, Landroidx/datastore/preferences/protobuf/l;->a:Landroidx/datastore/preferences/protobuf/k;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p3, p1, v1, v2}, Landroidx/datastore/preferences/protobuf/k;->S0(IJ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_40

    :cond_58
    return-void
.end method

.method public D(IJ)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/l;->a:Landroidx/datastore/preferences/protobuf/k;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/k;->S0(IJ)V

    return-void
.end method

.method public E(IF)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/l;->a:Landroidx/datastore/preferences/protobuf/k;

    invoke-virtual {v0, p1, p2}, Landroidx/datastore/preferences/protobuf/k;->y0(IF)V

    return-void
.end method

.method public F(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/l;->a:Landroidx/datastore/preferences/protobuf/k;

    const/4 v1, 0x4

    invoke-virtual {v0, p1, v1}, Landroidx/datastore/preferences/protobuf/k;->W0(II)V

    return-void
.end method

.method public G(ILjava/util/List;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_40

    .line 1
    iget-object p3, p0, Landroidx/datastore/preferences/protobuf/l;->a:Landroidx/datastore/preferences/protobuf/k;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Landroidx/datastore/preferences/protobuf/k;->W0(II)V

    const/4 p1, 0x0

    const/4 p3, 0x0

    .line 2
    :goto_b
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_23

    .line 3
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Landroidx/datastore/preferences/protobuf/k;->Q(I)I

    move-result v1

    add-int/2addr p3, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_b

    .line 4
    :cond_23
    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/l;->a:Landroidx/datastore/preferences/protobuf/k;

    invoke-virtual {p1, p3}, Landroidx/datastore/preferences/protobuf/k;->Y0(I)V

    .line 5
    :goto_28
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_58

    .line 6
    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/l;->a:Landroidx/datastore/preferences/protobuf/k;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {p1, p3}, Landroidx/datastore/preferences/protobuf/k;->R0(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_28

    .line 7
    :cond_40
    :goto_40
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_58

    .line 8
    iget-object p3, p0, Landroidx/datastore/preferences/protobuf/l;->a:Landroidx/datastore/preferences/protobuf/k;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p3, p1, v1}, Landroidx/datastore/preferences/protobuf/k;->Q0(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_40

    :cond_58
    return-void
.end method

.method public H(II)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/l;->a:Landroidx/datastore/preferences/protobuf/k;

    invoke-virtual {v0, p1, p2}, Landroidx/datastore/preferences/protobuf/k;->s0(II)V

    return-void
.end method

.method public I(ILjava/util/List;Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_40

    .line 1
    iget-object p3, p0, Landroidx/datastore/preferences/protobuf/l;->a:Landroidx/datastore/preferences/protobuf/k;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Landroidx/datastore/preferences/protobuf/k;->W0(II)V

    const/4 p1, 0x0

    const/4 p3, 0x0

    .line 2
    :goto_b
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_23

    .line 3
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Landroidx/datastore/preferences/protobuf/k;->y(J)I

    move-result v1

    add-int/2addr p3, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_b

    .line 4
    :cond_23
    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/l;->a:Landroidx/datastore/preferences/protobuf/k;

    invoke-virtual {p1, p3}, Landroidx/datastore/preferences/protobuf/k;->Y0(I)V

    .line 5
    :goto_28
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_58

    .line 6
    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/l;->a:Landroidx/datastore/preferences/protobuf/k;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Landroidx/datastore/preferences/protobuf/k;->H0(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_28

    .line 7
    :cond_40
    :goto_40
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_58

    .line 8
    iget-object p3, p0, Landroidx/datastore/preferences/protobuf/l;->a:Landroidx/datastore/preferences/protobuf/k;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p3, p1, v1, v2}, Landroidx/datastore/preferences/protobuf/k;->G0(IJ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_40

    :cond_58
    return-void
.end method

.method public J(ILjava/util/List;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_40

    .line 1
    iget-object p3, p0, Landroidx/datastore/preferences/protobuf/l;->a:Landroidx/datastore/preferences/protobuf/k;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Landroidx/datastore/preferences/protobuf/k;->W0(II)V

    const/4 p1, 0x0

    const/4 p3, 0x0

    .line 2
    :goto_b
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_23

    .line 3
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Landroidx/datastore/preferences/protobuf/k;->l(I)I

    move-result v1

    add-int/2addr p3, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_b

    .line 4
    :cond_23
    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/l;->a:Landroidx/datastore/preferences/protobuf/k;

    invoke-virtual {p1, p3}, Landroidx/datastore/preferences/protobuf/k;->Y0(I)V

    .line 5
    :goto_28
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_58

    .line 6
    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/l;->a:Landroidx/datastore/preferences/protobuf/k;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {p1, p3}, Landroidx/datastore/preferences/protobuf/k;->t0(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_28

    .line 7
    :cond_40
    :goto_40
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_58

    .line 8
    iget-object p3, p0, Landroidx/datastore/preferences/protobuf/l;->a:Landroidx/datastore/preferences/protobuf/k;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p3, p1, v1}, Landroidx/datastore/preferences/protobuf/k;->s0(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_40

    :cond_58
    return-void
.end method

.method public K(ILjava/util/List;Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_40

    .line 1
    iget-object p3, p0, Landroidx/datastore/preferences/protobuf/l;->a:Landroidx/datastore/preferences/protobuf/k;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Landroidx/datastore/preferences/protobuf/k;->W0(II)V

    const/4 p1, 0x0

    const/4 p3, 0x0

    .line 2
    :goto_b
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_23

    .line 3
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-static {v1, v2}, Landroidx/datastore/preferences/protobuf/k;->j(D)I

    move-result v1

    add-int/2addr p3, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_b

    .line 4
    :cond_23
    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/l;->a:Landroidx/datastore/preferences/protobuf/k;

    invoke-virtual {p1, p3}, Landroidx/datastore/preferences/protobuf/k;->Y0(I)V

    .line 5
    :goto_28
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_58

    .line 6
    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/l;->a:Landroidx/datastore/preferences/protobuf/k;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Double;

    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Landroidx/datastore/preferences/protobuf/k;->r0(D)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_28

    .line 7
    :cond_40
    :goto_40
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_58

    .line 8
    iget-object p3, p0, Landroidx/datastore/preferences/protobuf/l;->a:Landroidx/datastore/preferences/protobuf/k;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-virtual {p3, p1, v1, v2}, Landroidx/datastore/preferences/protobuf/k;->q0(ID)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_40

    :cond_58
    return-void
.end method

.method public L(ILandroidx/datastore/preferences/protobuf/k0$a;Ljava/util/Map;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(I",
            "Landroidx/datastore/preferences/protobuf/k0$a<",
            "TK;TV;>;",
            "Ljava/util/Map<",
            "TK;TV;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/l;->a:Landroidx/datastore/preferences/protobuf/k;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/k;->e0()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2
    invoke-direct {p0, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/l;->T(ILandroidx/datastore/preferences/protobuf/k0$a;Ljava/util/Map;)V

    return-void

    .line 3
    :cond_c
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_14
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_45

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 4
    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/l;->a:Landroidx/datastore/preferences/protobuf/k;

    const/4 v2, 0x2

    invoke-virtual {v1, p1, v2}, Landroidx/datastore/preferences/protobuf/k;->W0(II)V

    .line 5
    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/l;->a:Landroidx/datastore/preferences/protobuf/k;

    .line 6
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v2, v3}, Landroidx/datastore/preferences/protobuf/k0;->b(Landroidx/datastore/preferences/protobuf/k0$a;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    .line 7
    invoke-virtual {v1, v2}, Landroidx/datastore/preferences/protobuf/k;->Y0(I)V

    .line 8
    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/l;->a:Landroidx/datastore/preferences/protobuf/k;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, p2, v2, v0}, Landroidx/datastore/preferences/protobuf/k0;->e(Landroidx/datastore/preferences/protobuf/k;Landroidx/datastore/preferences/protobuf/k0$a;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_14

    :cond_45
    return-void
.end method

.method public M(II)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/l;->a:Landroidx/datastore/preferences/protobuf/k;

    invoke-virtual {v0, p1, p2}, Landroidx/datastore/preferences/protobuf/k;->Q0(II)V

    return-void
.end method

.method public N(ILjava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroidx/datastore/preferences/protobuf/h;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_15

    .line 2
    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/l;->a:Landroidx/datastore/preferences/protobuf/k;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/datastore/preferences/protobuf/h;

    invoke-virtual {v1, p1, v2}, Landroidx/datastore/preferences/protobuf/k;->o0(ILandroidx/datastore/preferences/protobuf/h;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_15
    return-void
.end method

.method public O(ILjava/lang/Object;Landroidx/datastore/preferences/protobuf/g1;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/l;->a:Landroidx/datastore/preferences/protobuf/k;

    check-cast p2, Landroidx/datastore/preferences/protobuf/r0;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/k;->B0(ILandroidx/datastore/preferences/protobuf/r0;Landroidx/datastore/preferences/protobuf/g1;)V

    return-void
.end method

.method public a(ILjava/util/List;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_40

    .line 1
    iget-object p3, p0, Landroidx/datastore/preferences/protobuf/l;->a:Landroidx/datastore/preferences/protobuf/k;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Landroidx/datastore/preferences/protobuf/k;->W0(II)V

    const/4 p1, 0x0

    const/4 p3, 0x0

    .line 2
    :goto_b
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_23

    .line 3
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v1}, Landroidx/datastore/preferences/protobuf/k;->r(F)I

    move-result v1

    add-int/2addr p3, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_b

    .line 4
    :cond_23
    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/l;->a:Landroidx/datastore/preferences/protobuf/k;

    invoke-virtual {p1, p3}, Landroidx/datastore/preferences/protobuf/k;->Y0(I)V

    .line 5
    :goto_28
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_58

    .line 6
    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/l;->a:Landroidx/datastore/preferences/protobuf/k;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    invoke-virtual {p1, p3}, Landroidx/datastore/preferences/protobuf/k;->z0(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_28

    .line 7
    :cond_40
    :goto_40
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_58

    .line 8
    iget-object p3, p0, Landroidx/datastore/preferences/protobuf/l;->a:Landroidx/datastore/preferences/protobuf/k;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p3, p1, v1}, Landroidx/datastore/preferences/protobuf/k;->y0(IF)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_40

    :cond_58
    return-void
.end method

.method public b(II)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/l;->a:Landroidx/datastore/preferences/protobuf/k;

    invoke-virtual {v0, p1, p2}, Landroidx/datastore/preferences/protobuf/k;->X0(II)V

    return-void
.end method

.method public final c(ILjava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    instance-of v0, p2, Landroidx/datastore/preferences/protobuf/h;

    if-eqz v0, :cond_c

    .line 2
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/l;->a:Landroidx/datastore/preferences/protobuf/k;

    check-cast p2, Landroidx/datastore/preferences/protobuf/h;

    invoke-virtual {v0, p1, p2}, Landroidx/datastore/preferences/protobuf/k;->L0(ILandroidx/datastore/preferences/protobuf/h;)V

    goto :goto_13

    .line 3
    :cond_c
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/l;->a:Landroidx/datastore/preferences/protobuf/k;

    check-cast p2, Landroidx/datastore/preferences/protobuf/r0;

    invoke-virtual {v0, p1, p2}, Landroidx/datastore/preferences/protobuf/k;->K0(ILandroidx/datastore/preferences/protobuf/r0;)V

    :goto_13
    return-void
.end method

.method public d(II)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/l;->a:Landroidx/datastore/preferences/protobuf/k;

    invoke-virtual {v0, p1, p2}, Landroidx/datastore/preferences/protobuf/k;->u0(II)V

    return-void
.end method

.method public e(ID)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/l;->a:Landroidx/datastore/preferences/protobuf/k;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/k;->q0(ID)V

    return-void
.end method

.method public f(ILjava/util/List;Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_40

    .line 1
    iget-object p3, p0, Landroidx/datastore/preferences/protobuf/l;->a:Landroidx/datastore/preferences/protobuf/k;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Landroidx/datastore/preferences/protobuf/k;->W0(II)V

    const/4 p1, 0x0

    const/4 p3, 0x0

    .line 2
    :goto_b
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_23

    .line 3
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Landroidx/datastore/preferences/protobuf/k;->O(J)I

    move-result v1

    add-int/2addr p3, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_b

    .line 4
    :cond_23
    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/l;->a:Landroidx/datastore/preferences/protobuf/k;

    invoke-virtual {p1, p3}, Landroidx/datastore/preferences/protobuf/k;->Y0(I)V

    .line 5
    :goto_28
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_58

    .line 6
    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/l;->a:Landroidx/datastore/preferences/protobuf/k;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Landroidx/datastore/preferences/protobuf/k;->P0(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_28

    .line 7
    :cond_40
    :goto_40
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_58

    .line 8
    iget-object p3, p0, Landroidx/datastore/preferences/protobuf/l;->a:Landroidx/datastore/preferences/protobuf/k;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p3, p1, v1, v2}, Landroidx/datastore/preferences/protobuf/k;->O0(IJ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_40

    :cond_58
    return-void
.end method

.method public g(ILjava/util/List;Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_40

    .line 1
    iget-object p3, p0, Landroidx/datastore/preferences/protobuf/l;->a:Landroidx/datastore/preferences/protobuf/k;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Landroidx/datastore/preferences/protobuf/k;->W0(II)V

    const/4 p1, 0x0

    const/4 p3, 0x0

    .line 2
    :goto_b
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_23

    .line 3
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Landroidx/datastore/preferences/protobuf/k;->Z(J)I

    move-result v1

    add-int/2addr p3, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_b

    .line 4
    :cond_23
    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/l;->a:Landroidx/datastore/preferences/protobuf/k;

    invoke-virtual {p1, p3}, Landroidx/datastore/preferences/protobuf/k;->Y0(I)V

    .line 5
    :goto_28
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_58

    .line 6
    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/l;->a:Landroidx/datastore/preferences/protobuf/k;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Landroidx/datastore/preferences/protobuf/k;->a1(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_28

    .line 7
    :cond_40
    :goto_40
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_58

    .line 8
    iget-object p3, p0, Landroidx/datastore/preferences/protobuf/l;->a:Landroidx/datastore/preferences/protobuf/k;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p3, p1, v1, v2}, Landroidx/datastore/preferences/protobuf/k;->Z0(IJ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_40

    :cond_58
    return-void
.end method

.method public h(IJ)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/l;->a:Landroidx/datastore/preferences/protobuf/k;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/k;->w0(IJ)V

    return-void
.end method

.method public i()Landroidx/datastore/preferences/protobuf/u1$a;
    .registers 2

    .line 1
    sget-object v0, Landroidx/datastore/preferences/protobuf/u1$a;->o:Landroidx/datastore/preferences/protobuf/u1$a;

    return-object v0
.end method

.method public j(ILjava/util/List;Landroidx/datastore/preferences/protobuf/g1;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "*>;",
            "Landroidx/datastore/preferences/protobuf/g1;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_11

    .line 2
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, p1, v1, p3}, Landroidx/datastore/preferences/protobuf/l;->z(ILjava/lang/Object;Landroidx/datastore/preferences/protobuf/g1;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_11
    return-void
.end method

.method public k(ILjava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    instance-of v0, p2, Landroidx/datastore/preferences/protobuf/g0;

    const/4 v1, 0x0

    if-eqz v0, :cond_18

    .line 2
    move-object v0, p2

    check-cast v0, Landroidx/datastore/preferences/protobuf/g0;

    .line 3
    :goto_8
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2c

    .line 4
    invoke-interface {v0, v1}, Landroidx/datastore/preferences/protobuf/g0;->o3(I)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Landroidx/datastore/preferences/protobuf/l;->V(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 5
    :cond_18
    :goto_18
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2c

    .line 6
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/l;->a:Landroidx/datastore/preferences/protobuf/k;

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, p1, v2}, Landroidx/datastore/preferences/protobuf/k;->U0(ILjava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    :cond_2c
    return-void
.end method

.method public l(ILjava/util/List;Landroidx/datastore/preferences/protobuf/g1;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "*>;",
            "Landroidx/datastore/preferences/protobuf/g1;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_11

    .line 2
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, p1, v1, p3}, Landroidx/datastore/preferences/protobuf/l;->O(ILjava/lang/Object;Landroidx/datastore/preferences/protobuf/g1;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_11
    return-void
.end method

.method public m(ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/l;->a:Landroidx/datastore/preferences/protobuf/k;

    invoke-virtual {v0, p1, p2}, Landroidx/datastore/preferences/protobuf/k;->U0(ILjava/lang/String;)V

    return-void
.end method

.method public n(IJ)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/l;->a:Landroidx/datastore/preferences/protobuf/k;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/k;->Z0(IJ)V

    return-void
.end method

.method public o(ILjava/util/List;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_40

    .line 1
    iget-object p3, p0, Landroidx/datastore/preferences/protobuf/l;->a:Landroidx/datastore/preferences/protobuf/k;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Landroidx/datastore/preferences/protobuf/k;->W0(II)V

    const/4 p1, 0x0

    const/4 p3, 0x0

    .line 2
    :goto_b
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_23

    .line 3
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Landroidx/datastore/preferences/protobuf/k;->w(I)I

    move-result v1

    add-int/2addr p3, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_b

    .line 4
    :cond_23
    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/l;->a:Landroidx/datastore/preferences/protobuf/k;

    invoke-virtual {p1, p3}, Landroidx/datastore/preferences/protobuf/k;->Y0(I)V

    .line 5
    :goto_28
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_58

    .line 6
    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/l;->a:Landroidx/datastore/preferences/protobuf/k;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {p1, p3}, Landroidx/datastore/preferences/protobuf/k;->F0(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_28

    .line 7
    :cond_40
    :goto_40
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_58

    .line 8
    iget-object p3, p0, Landroidx/datastore/preferences/protobuf/l;->a:Landroidx/datastore/preferences/protobuf/k;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p3, p1, v1}, Landroidx/datastore/preferences/protobuf/k;->E0(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_40

    :cond_58
    return-void
.end method

.method public p(IJ)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/l;->a:Landroidx/datastore/preferences/protobuf/k;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/k;->G0(IJ)V

    return-void
.end method

.method public q(IZ)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/l;->a:Landroidx/datastore/preferences/protobuf/k;

    invoke-virtual {v0, p1, p2}, Landroidx/datastore/preferences/protobuf/k;->k0(IZ)V

    return-void
.end method

.method public r(II)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/l;->a:Landroidx/datastore/preferences/protobuf/k;

    invoke-virtual {v0, p1, p2}, Landroidx/datastore/preferences/protobuf/k;->M0(II)V

    return-void
.end method

.method public s(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/l;->a:Landroidx/datastore/preferences/protobuf/k;

    const/4 v1, 0x3

    invoke-virtual {v0, p1, v1}, Landroidx/datastore/preferences/protobuf/k;->W0(II)V

    return-void
.end method

.method public t(II)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/l;->a:Landroidx/datastore/preferences/protobuf/k;

    invoke-virtual {v0, p1, p2}, Landroidx/datastore/preferences/protobuf/k;->E0(II)V

    return-void
.end method

.method public u(ILjava/util/List;Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_40

    .line 1
    iget-object p3, p0, Landroidx/datastore/preferences/protobuf/l;->a:Landroidx/datastore/preferences/protobuf/k;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Landroidx/datastore/preferences/protobuf/k;->W0(II)V

    const/4 p1, 0x0

    const/4 p3, 0x0

    .line 2
    :goto_b
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_23

    .line 3
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Landroidx/datastore/preferences/protobuf/k;->p(J)I

    move-result v1

    add-int/2addr p3, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_b

    .line 4
    :cond_23
    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/l;->a:Landroidx/datastore/preferences/protobuf/k;

    invoke-virtual {p1, p3}, Landroidx/datastore/preferences/protobuf/k;->Y0(I)V

    .line 5
    :goto_28
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_58

    .line 6
    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/l;->a:Landroidx/datastore/preferences/protobuf/k;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Landroidx/datastore/preferences/protobuf/k;->x0(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_28

    .line 7
    :cond_40
    :goto_40
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_58

    .line 8
    iget-object p3, p0, Landroidx/datastore/preferences/protobuf/l;->a:Landroidx/datastore/preferences/protobuf/k;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p3, p1, v1, v2}, Landroidx/datastore/preferences/protobuf/k;->w0(IJ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_40

    :cond_58
    return-void
.end method

.method public v(ILjava/util/List;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_40

    .line 1
    iget-object p3, p0, Landroidx/datastore/preferences/protobuf/l;->a:Landroidx/datastore/preferences/protobuf/k;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Landroidx/datastore/preferences/protobuf/k;->W0(II)V

    const/4 p1, 0x0

    const/4 p3, 0x0

    .line 2
    :goto_b
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_23

    .line 3
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Landroidx/datastore/preferences/protobuf/k;->M(I)I

    move-result v1

    add-int/2addr p3, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_b

    .line 4
    :cond_23
    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/l;->a:Landroidx/datastore/preferences/protobuf/k;

    invoke-virtual {p1, p3}, Landroidx/datastore/preferences/protobuf/k;->Y0(I)V

    .line 5
    :goto_28
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_58

    .line 6
    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/l;->a:Landroidx/datastore/preferences/protobuf/k;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {p1, p3}, Landroidx/datastore/preferences/protobuf/k;->N0(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_28

    .line 7
    :cond_40
    :goto_40
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_58

    .line 8
    iget-object p3, p0, Landroidx/datastore/preferences/protobuf/l;->a:Landroidx/datastore/preferences/protobuf/k;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p3, p1, v1}, Landroidx/datastore/preferences/protobuf/k;->M0(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_40

    :cond_58
    return-void
.end method

.method public w(ILandroidx/datastore/preferences/protobuf/h;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/l;->a:Landroidx/datastore/preferences/protobuf/k;

    invoke-virtual {v0, p1, p2}, Landroidx/datastore/preferences/protobuf/k;->o0(ILandroidx/datastore/preferences/protobuf/h;)V

    return-void
.end method

.method public x(IJ)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/l;->a:Landroidx/datastore/preferences/protobuf/k;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/k;->O0(IJ)V

    return-void
.end method

.method public y(ILjava/util/List;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_40

    .line 1
    iget-object p3, p0, Landroidx/datastore/preferences/protobuf/l;->a:Landroidx/datastore/preferences/protobuf/k;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Landroidx/datastore/preferences/protobuf/k;->W0(II)V

    const/4 p1, 0x0

    const/4 p3, 0x0

    .line 2
    :goto_b
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_23

    .line 3
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Landroidx/datastore/preferences/protobuf/k;->n(I)I

    move-result v1

    add-int/2addr p3, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_b

    .line 4
    :cond_23
    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/l;->a:Landroidx/datastore/preferences/protobuf/k;

    invoke-virtual {p1, p3}, Landroidx/datastore/preferences/protobuf/k;->Y0(I)V

    .line 5
    :goto_28
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_58

    .line 6
    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/l;->a:Landroidx/datastore/preferences/protobuf/k;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {p1, p3}, Landroidx/datastore/preferences/protobuf/k;->v0(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_28

    .line 7
    :cond_40
    :goto_40
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_58

    .line 8
    iget-object p3, p0, Landroidx/datastore/preferences/protobuf/l;->a:Landroidx/datastore/preferences/protobuf/k;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p3, p1, v1}, Landroidx/datastore/preferences/protobuf/k;->u0(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_40

    :cond_58
    return-void
.end method

.method public z(ILjava/lang/Object;Landroidx/datastore/preferences/protobuf/g1;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/l;->a:Landroidx/datastore/preferences/protobuf/k;

    check-cast p2, Landroidx/datastore/preferences/protobuf/r0;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/k;->I0(ILandroidx/datastore/preferences/protobuf/r0;Landroidx/datastore/preferences/protobuf/g1;)V

    return-void
.end method

###### Class androidx.datastore.preferences.protobuf.l.a (androidx.datastore.preferences.protobuf.l$a)
.class synthetic Landroidx/datastore/preferences/protobuf/l$a;
.super Ljava/lang/Object;
.source "CodedOutputStreamWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/datastore/preferences/protobuf/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic a:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    invoke-static {}, Landroidx/datastore/preferences/protobuf/t1$b;->values()[Landroidx/datastore/preferences/protobuf/t1$b;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Landroidx/datastore/preferences/protobuf/l$a;->a:[I

    :try_start_9
    sget-object v1, Landroidx/datastore/preferences/protobuf/t1$b;->x:Landroidx/datastore/preferences/protobuf/t1$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Landroidx/datastore/preferences/protobuf/l$a;->a:[I

    sget-object v1, Landroidx/datastore/preferences/protobuf/t1$b;->w:Landroidx/datastore/preferences/protobuf/t1$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1d
    sget-object v0, Landroidx/datastore/preferences/protobuf/l$a;->a:[I

    sget-object v1, Landroidx/datastore/preferences/protobuf/t1$b;->u:Landroidx/datastore/preferences/protobuf/t1$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_28

    :catch_28
    :try_start_28
    sget-object v0, Landroidx/datastore/preferences/protobuf/l$a;->a:[I

    sget-object v1, Landroidx/datastore/preferences/protobuf/t1$b;->E:Landroidx/datastore/preferences/protobuf/t1$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_33} :catch_33

    :catch_33
    :try_start_33
    sget-object v0, Landroidx/datastore/preferences/protobuf/l$a;->a:[I

    sget-object v1, Landroidx/datastore/preferences/protobuf/t1$b;->G:Landroidx/datastore/preferences/protobuf/t1$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_3e} :catch_3e

    :catch_3e
    :try_start_3e
    sget-object v0, Landroidx/datastore/preferences/protobuf/l$a;->a:[I

    sget-object v1, Landroidx/datastore/preferences/protobuf/t1$b;->C:Landroidx/datastore/preferences/protobuf/t1$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_49
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_49} :catch_49

    :catch_49
    :try_start_49
    sget-object v0, Landroidx/datastore/preferences/protobuf/l$a;->a:[I

    sget-object v1, Landroidx/datastore/preferences/protobuf/t1$b;->v:Landroidx/datastore/preferences/protobuf/t1$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_54
    .catch Ljava/lang/NoSuchFieldError; {:try_start_49 .. :try_end_54} :catch_54

    :catch_54
    :try_start_54
    sget-object v0, Landroidx/datastore/preferences/protobuf/l$a;->a:[I

    sget-object v1, Landroidx/datastore/preferences/protobuf/t1$b;->s:Landroidx/datastore/preferences/protobuf/t1$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_60
    .catch Ljava/lang/NoSuchFieldError; {:try_start_54 .. :try_end_60} :catch_60

    :catch_60
    :try_start_60
    sget-object v0, Landroidx/datastore/preferences/protobuf/l$a;->a:[I

    sget-object v1, Landroidx/datastore/preferences/protobuf/t1$b;->F:Landroidx/datastore/preferences/protobuf/t1$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_6c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_60 .. :try_end_6c} :catch_6c

    :catch_6c
    :try_start_6c
    sget-object v0, Landroidx/datastore/preferences/protobuf/l$a;->a:[I

    sget-object v1, Landroidx/datastore/preferences/protobuf/t1$b;->H:Landroidx/datastore/preferences/protobuf/t1$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_78
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6c .. :try_end_78} :catch_78

    :catch_78
    :try_start_78
    sget-object v0, Landroidx/datastore/preferences/protobuf/l$a;->a:[I

    sget-object v1, Landroidx/datastore/preferences/protobuf/t1$b;->t:Landroidx/datastore/preferences/protobuf/t1$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_84
    .catch Ljava/lang/NoSuchFieldError; {:try_start_78 .. :try_end_84} :catch_84

    :catch_84
    :try_start_84
    sget-object v0, Landroidx/datastore/preferences/protobuf/l$a;->a:[I

    sget-object v1, Landroidx/datastore/preferences/protobuf/t1$b;->y:Landroidx/datastore/preferences/protobuf/t1$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_90
    .catch Ljava/lang/NoSuchFieldError; {:try_start_84 .. :try_end_90} :catch_90

    :catch_90
    return-void
.end method
