###### Class q1.f (q1.f)
.class public final Lq1/f;
.super Ljava/lang/Object;
.source "PreferenceDao_Impl.java"

# interfaces
.implements Lq1/e;


# instance fields
.field private final a:Landroidx/room/h0;

.field private final b:Lx0/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx0/g<",
            "Lq1/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/room/h0;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lq1/f;->a:Landroidx/room/h0;

    .line 3
    new-instance v0, Lq1/f$a;

    invoke-direct {v0, p0, p1}, Lq1/f$a;-><init>(Lq1/f;Landroidx/room/h0;)V

    iput-object v0, p0, Lq1/f;->b:Lx0/g;

    return-void
.end method


# virtual methods
.method public a(Lq1/d;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lq1/f;->a:Landroidx/room/h0;

    invoke-virtual {v0}, Landroidx/room/h0;->d()V

    .line 2
    iget-object v0, p0, Lq1/f;->a:Landroidx/room/h0;

    invoke-virtual {v0}, Landroidx/room/h0;->e()V

    .line 3
    :try_start_a
    iget-object v0, p0, Lq1/f;->b:Lx0/g;

    invoke-virtual {v0, p1}, Lx0/g;->i(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lq1/f;->a:Landroidx/room/h0;

    invoke-virtual {p1}, Landroidx/room/h0;->A()V
    :try_end_14
    .catchall {:try_start_a .. :try_end_14} :catchall_1a

    .line 5
    iget-object p1, p0, Lq1/f;->a:Landroidx/room/h0;

    invoke-virtual {p1}, Landroidx/room/h0;->i()V

    return-void

    :catchall_1a
    move-exception p1

    iget-object v0, p0, Lq1/f;->a:Landroidx/room/h0;

    invoke-virtual {v0}, Landroidx/room/h0;->i()V

    .line 6
    throw p1
.end method

.method public b(Ljava/lang/String;)Ljava/lang/Long;
    .registers 6

    const-string v0, "SELECT long_value FROM Preference where `key`=?"

    const/4 v1, 0x1

    .line 1
    invoke-static {v0, v1}, Lx0/k;->d(Ljava/lang/String;I)Lx0/k;

    move-result-object v0

    if-nez p1, :cond_d

    .line 2
    invoke-virtual {v0, v1}, Lx0/k;->z2(I)V

    goto :goto_10

    .line 3
    :cond_d
    invoke-virtual {v0, v1, p1}, Lx0/k;->k0(ILjava/lang/String;)V

    .line 4
    :goto_10
    iget-object p1, p0, Lq1/f;->a:Landroidx/room/h0;

    invoke-virtual {p1}, Landroidx/room/h0;->d()V

    .line 5
    iget-object p1, p0, Lq1/f;->a:Landroidx/room/h0;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Lz0/c;->b(Landroidx/room/h0;Lb1/j;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p1

    .line 6
    :try_start_1d
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_32

    .line 7
    invoke-interface {p1, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_2a

    goto :goto_32

    .line 8
    :cond_2a
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2
    :try_end_32
    .catchall {:try_start_1d .. :try_end_32} :catchall_39

    .line 9
    :cond_32
    :goto_32
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 10
    invoke-virtual {v0}, Lx0/k;->g()V

    return-object v2

    :catchall_39
    move-exception v1

    .line 11
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 12
    invoke-virtual {v0}, Lx0/k;->g()V

    .line 13
    throw v1
.end method

###### Class q1.f.a (q1.f$a)
.class Lq1/f$a;
.super Lx0/g;
.source "PreferenceDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lq1/f;-><init>(Landroidx/room/h0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lx0/g<",
        "Lq1/d;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic d:Lq1/f;


# direct methods
.method constructor <init>(Lq1/f;Landroidx/room/h0;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lq1/f$a;->d:Lq1/f;

    invoke-direct {p0, p2}, Lx0/g;-><init>(Landroidx/room/h0;)V

    return-void
.end method


# virtual methods
.method public d()Ljava/lang/String;
    .registers 2

    const-string v0, "INSERT OR REPLACE INTO `Preference` (`key`,`long_value`) VALUES (?,?)"

    return-object v0
.end method

.method public bridge synthetic g(Lb1/k;Ljava/lang/Object;)V
    .registers 3

    .line 1
    check-cast p2, Lq1/d;

    invoke-virtual {p0, p1, p2}, Lq1/f$a;->j(Lb1/k;Lq1/d;)V

    return-void
.end method

.method public j(Lb1/k;Lq1/d;)V
    .registers 6

    .line 1
    iget-object v0, p2, Lq1/d;->a:Ljava/lang/String;

    const/4 v1, 0x1

    if-nez v0, :cond_9

    .line 2
    invoke-interface {p1, v1}, Lb1/i;->z2(I)V

    goto :goto_c

    .line 3
    :cond_9
    invoke-interface {p1, v1, v0}, Lb1/i;->k0(ILjava/lang/String;)V

    .line 4
    :goto_c
    iget-object p2, p2, Lq1/d;->b:Ljava/lang/Long;

    const/4 v0, 0x2

    if-nez p2, :cond_15

    .line 5
    invoke-interface {p1, v0}, Lb1/i;->z2(I)V

    goto :goto_1c

    .line 6
    :cond_15
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lb1/i;->s1(IJ)V

    :goto_1c
    return-void
.end method
