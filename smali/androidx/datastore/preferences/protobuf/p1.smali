###### Class androidx.datastore.preferences.protobuf.p1 (androidx.datastore.preferences.protobuf.p1)
.class Landroidx/datastore/preferences/protobuf/p1;
.super Landroidx/datastore/preferences/protobuf/n1;
.source "UnknownFieldSetLiteSchema.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/datastore/preferences/protobuf/n1<",
        "Landroidx/datastore/preferences/protobuf/o1;",
        "Landroidx/datastore/preferences/protobuf/o1;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/n1;-><init>()V

    return-void
.end method


# virtual methods
.method A(Ljava/lang/Object;)Landroidx/datastore/preferences/protobuf/o1;
    .registers 2

    .line 1
    check-cast p1, Landroidx/datastore/preferences/protobuf/y;

    iget-object p1, p1, Landroidx/datastore/preferences/protobuf/y;->unknownFields:Landroidx/datastore/preferences/protobuf/o1;

    return-object p1
.end method

.method B(Landroidx/datastore/preferences/protobuf/o1;)I
    .registers 2

    .line 1
    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/o1;->f()I

    move-result p1

    return p1
.end method

.method C(Landroidx/datastore/preferences/protobuf/o1;)I
    .registers 2

    .line 1
    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/o1;->g()I

    move-result p1

    return p1
.end method

.method D(Landroidx/datastore/preferences/protobuf/o1;Landroidx/datastore/preferences/protobuf/o1;)Landroidx/datastore/preferences/protobuf/o1;
    .registers 4

    .line 1
    invoke-static {}, Landroidx/datastore/preferences/protobuf/o1;->e()Landroidx/datastore/preferences/protobuf/o1;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/datastore/preferences/protobuf/o1;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_f

    .line 2
    :cond_b
    invoke-static {p1, p2}, Landroidx/datastore/preferences/protobuf/o1;->k(Landroidx/datastore/preferences/protobuf/o1;Landroidx/datastore/preferences/protobuf/o1;)Landroidx/datastore/preferences/protobuf/o1;

    move-result-object p1

    :goto_f
    return-object p1
.end method

.method E()Landroidx/datastore/preferences/protobuf/o1;
    .registers 2

    .line 1
    invoke-static {}, Landroidx/datastore/preferences/protobuf/o1;->l()Landroidx/datastore/preferences/protobuf/o1;

    move-result-object v0

    return-object v0
.end method

.method F(Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/o1;)V
    .registers 3

    .line 1
    invoke-virtual {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/p1;->G(Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/o1;)V

    return-void
.end method

.method G(Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/o1;)V
    .registers 3

    .line 1
    check-cast p1, Landroidx/datastore/preferences/protobuf/y;

    iput-object p2, p1, Landroidx/datastore/preferences/protobuf/y;->unknownFields:Landroidx/datastore/preferences/protobuf/o1;

    return-void
.end method

.method H(Landroidx/datastore/preferences/protobuf/o1;)Landroidx/datastore/preferences/protobuf/o1;
    .registers 2

    .line 1
    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/o1;->j()V

    return-object p1
.end method

.method I(Landroidx/datastore/preferences/protobuf/o1;Landroidx/datastore/preferences/protobuf/u1;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1, p2}, Landroidx/datastore/preferences/protobuf/o1;->o(Landroidx/datastore/preferences/protobuf/u1;)V

    return-void
.end method

.method J(Landroidx/datastore/preferences/protobuf/o1;Landroidx/datastore/preferences/protobuf/u1;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1, p2}, Landroidx/datastore/preferences/protobuf/o1;->q(Landroidx/datastore/preferences/protobuf/u1;)V

    return-void
.end method

.method bridge synthetic a(Ljava/lang/Object;II)V
    .registers 4

    .line 1
    check-cast p1, Landroidx/datastore/preferences/protobuf/o1;

    invoke-virtual {p0, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/p1;->u(Landroidx/datastore/preferences/protobuf/o1;II)V

    return-void
.end method

.method bridge synthetic b(Ljava/lang/Object;IJ)V
    .registers 5

    .line 1
    check-cast p1, Landroidx/datastore/preferences/protobuf/o1;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/datastore/preferences/protobuf/p1;->v(Landroidx/datastore/preferences/protobuf/o1;IJ)V

    return-void
.end method

.method bridge synthetic c(Ljava/lang/Object;ILjava/lang/Object;)V
    .registers 4

    .line 1
    check-cast p1, Landroidx/datastore/preferences/protobuf/o1;

    check-cast p3, Landroidx/datastore/preferences/protobuf/o1;

    invoke-virtual {p0, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/p1;->w(Landroidx/datastore/preferences/protobuf/o1;ILandroidx/datastore/preferences/protobuf/o1;)V

    return-void
.end method

.method bridge synthetic d(Ljava/lang/Object;ILandroidx/datastore/preferences/protobuf/h;)V
    .registers 4

    .line 1
    check-cast p1, Landroidx/datastore/preferences/protobuf/o1;

    invoke-virtual {p0, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/p1;->x(Landroidx/datastore/preferences/protobuf/o1;ILandroidx/datastore/preferences/protobuf/h;)V

    return-void
.end method

.method bridge synthetic e(Ljava/lang/Object;IJ)V
    .registers 5

    .line 1
    check-cast p1, Landroidx/datastore/preferences/protobuf/o1;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/datastore/preferences/protobuf/p1;->y(Landroidx/datastore/preferences/protobuf/o1;IJ)V

    return-void
.end method

.method bridge synthetic f(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/p1;->z(Ljava/lang/Object;)Landroidx/datastore/preferences/protobuf/o1;

    move-result-object p1

    return-object p1
.end method

.method bridge synthetic g(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/p1;->A(Ljava/lang/Object;)Landroidx/datastore/preferences/protobuf/o1;

    move-result-object p1

    return-object p1
.end method

.method bridge synthetic h(Ljava/lang/Object;)I
    .registers 2

    .line 1
    check-cast p1, Landroidx/datastore/preferences/protobuf/o1;

    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/p1;->B(Landroidx/datastore/preferences/protobuf/o1;)I

    move-result p1

    return p1
.end method

.method bridge synthetic i(Ljava/lang/Object;)I
    .registers 2

    .line 1
    check-cast p1, Landroidx/datastore/preferences/protobuf/o1;

    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/p1;->C(Landroidx/datastore/preferences/protobuf/o1;)I

    move-result p1

    return p1
.end method

.method j(Ljava/lang/Object;)V
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/p1;->A(Ljava/lang/Object;)Landroidx/datastore/preferences/protobuf/o1;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/o1;->j()V

    return-void
.end method

.method bridge synthetic k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1
    check-cast p1, Landroidx/datastore/preferences/protobuf/o1;

    check-cast p2, Landroidx/datastore/preferences/protobuf/o1;

    invoke-virtual {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/p1;->D(Landroidx/datastore/preferences/protobuf/o1;Landroidx/datastore/preferences/protobuf/o1;)Landroidx/datastore/preferences/protobuf/o1;

    move-result-object p1

    return-object p1
.end method

.method bridge synthetic n()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/p1;->E()Landroidx/datastore/preferences/protobuf/o1;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic o(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    .line 1
    check-cast p2, Landroidx/datastore/preferences/protobuf/o1;

    invoke-virtual {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/p1;->F(Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/o1;)V

    return-void
.end method

.method bridge synthetic p(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    .line 1
    check-cast p2, Landroidx/datastore/preferences/protobuf/o1;

    invoke-virtual {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/p1;->G(Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/o1;)V

    return-void
.end method

.method q(Landroidx/datastore/preferences/protobuf/f1;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method bridge synthetic r(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1
    check-cast p1, Landroidx/datastore/preferences/protobuf/o1;

    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/p1;->H(Landroidx/datastore/preferences/protobuf/o1;)Landroidx/datastore/preferences/protobuf/o1;

    move-result-object p1

    return-object p1
.end method

.method bridge synthetic s(Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/u1;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p1, Landroidx/datastore/preferences/protobuf/o1;

    invoke-virtual {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/p1;->I(Landroidx/datastore/preferences/protobuf/o1;Landroidx/datastore/preferences/protobuf/u1;)V

    return-void
.end method

.method bridge synthetic t(Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/u1;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p1, Landroidx/datastore/preferences/protobuf/o1;

    invoke-virtual {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/p1;->J(Landroidx/datastore/preferences/protobuf/o1;Landroidx/datastore/preferences/protobuf/u1;)V

    return-void
.end method

.method u(Landroidx/datastore/preferences/protobuf/o1;II)V
    .registers 5

    const/4 v0, 0x5

    .line 1
    invoke-static {p2, v0}, Landroidx/datastore/preferences/protobuf/t1;->c(II)I

    move-result p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroidx/datastore/preferences/protobuf/o1;->n(ILjava/lang/Object;)V

    return-void
.end method

.method v(Landroidx/datastore/preferences/protobuf/o1;IJ)V
    .registers 6

    const/4 v0, 0x1

    .line 1
    invoke-static {p2, v0}, Landroidx/datastore/preferences/protobuf/t1;->c(II)I

    move-result p2

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroidx/datastore/preferences/protobuf/o1;->n(ILjava/lang/Object;)V

    return-void
.end method

.method w(Landroidx/datastore/preferences/protobuf/o1;ILandroidx/datastore/preferences/protobuf/o1;)V
    .registers 5

    const/4 v0, 0x3

    .line 1
    invoke-static {p2, v0}, Landroidx/datastore/preferences/protobuf/t1;->c(II)I

    move-result p2

    invoke-virtual {p1, p2, p3}, Landroidx/datastore/preferences/protobuf/o1;->n(ILjava/lang/Object;)V

    return-void
.end method

.method x(Landroidx/datastore/preferences/protobuf/o1;ILandroidx/datastore/preferences/protobuf/h;)V
    .registers 5

    const/4 v0, 0x2

    .line 1
    invoke-static {p2, v0}, Landroidx/datastore/preferences/protobuf/t1;->c(II)I

    move-result p2

    invoke-virtual {p1, p2, p3}, Landroidx/datastore/preferences/protobuf/o1;->n(ILjava/lang/Object;)V

    return-void
.end method

.method y(Landroidx/datastore/preferences/protobuf/o1;IJ)V
    .registers 6

    const/4 v0, 0x0

    .line 1
    invoke-static {p2, v0}, Landroidx/datastore/preferences/protobuf/t1;->c(II)I

    move-result p2

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroidx/datastore/preferences/protobuf/o1;->n(ILjava/lang/Object;)V

    return-void
.end method

.method z(Ljava/lang/Object;)Landroidx/datastore/preferences/protobuf/o1;
    .registers 4

    .line 1
    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/p1;->A(Ljava/lang/Object;)Landroidx/datastore/preferences/protobuf/o1;

    move-result-object v0

    .line 2
    invoke-static {}, Landroidx/datastore/preferences/protobuf/o1;->e()Landroidx/datastore/preferences/protobuf/o1;

    move-result-object v1

    if-ne v0, v1, :cond_11

    .line 3
    invoke-static {}, Landroidx/datastore/preferences/protobuf/o1;->l()Landroidx/datastore/preferences/protobuf/o1;

    move-result-object v0

    .line 4
    invoke-virtual {p0, p1, v0}, Landroidx/datastore/preferences/protobuf/p1;->G(Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/o1;)V

    :cond_11
    return-object v0
.end method
