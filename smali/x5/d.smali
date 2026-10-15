###### Class x5.d (x5.d)
.class public Lx5/d;
.super Ljava/lang/Object;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lx5/d$a;,
        Lx5/d$b;
    }
.end annotation


# instance fields
.field public final a:Lx5/d$b;

.field public final b:Lx5/d$a;

.field public final c:J

.field public final d:I

.field public final e:I

.field public final f:D

.field public final g:D

.field public final h:I


# direct methods
.method public constructor <init>(JLx5/d$b;Lx5/d$a;IIDDI)V
    .registers 12

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lx5/d;->c:J

    .line 3
    iput-object p3, p0, Lx5/d;->a:Lx5/d$b;

    .line 4
    iput-object p4, p0, Lx5/d;->b:Lx5/d$a;

    .line 5
    iput p5, p0, Lx5/d;->d:I

    .line 6
    iput p6, p0, Lx5/d;->e:I

    .line 7
    iput-wide p7, p0, Lx5/d;->f:D

    .line 8
    iput-wide p9, p0, Lx5/d;->g:D

    .line 9
    iput p11, p0, Lx5/d;->h:I

    return-void
.end method


# virtual methods
.method public a(J)Z
    .registers 6

    .line 1
    iget-wide v0, p0, Lx5/d;->c:J

    cmp-long v2, v0, p1

    if-gez v2, :cond_8

    const/4 p1, 0x1

    goto :goto_9

    :cond_8
    const/4 p1, 0x0

    :goto_9
    return p1
.end method

###### Class x5.d.a (x5.d$a)
.class public Lx5/d$a;
.super Ljava/lang/Object;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lx5/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Z

.field public final b:Z

.field public final c:Z


# direct methods
.method public constructor <init>(ZZZ)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p1, p0, Lx5/d$a;->a:Z

    .line 3
    iput-boolean p2, p0, Lx5/d$a;->b:Z

    .line 4
    iput-boolean p3, p0, Lx5/d$a;->c:Z

    return-void
.end method

###### Class x5.d.b (x5.d$b)
.class public Lx5/d$b;
.super Ljava/lang/Object;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lx5/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final a:I

.field public final b:I


# direct methods
.method public constructor <init>(II)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lx5/d$b;->a:I

    .line 3
    iput p2, p0, Lx5/d$b;->b:I

    return-void
.end method
