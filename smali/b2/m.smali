###### Class b2.m (b2.m)
.class Lb2/m;
.super Ljava/lang/Object;
.source "ResourceRecycler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb2/m$b;
    }
.end annotation


# instance fields
.field private a:Z

.field private final b:Landroid/os/Handler;


# direct methods
.method constructor <init>()V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lb2/m$b;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lb2/m$b;-><init>(Lb2/m$a;)V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lb2/m;->b:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public a(Lb2/l;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb2/l<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lx2/h;->b()V

    .line 2
    iget-boolean v0, p0, Lb2/m;->a:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_12

    .line 3
    iget-object v0, p0, Lb2/m;->b:Landroid/os/Handler;

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1a

    .line 4
    :cond_12
    iput-boolean v1, p0, Lb2/m;->a:Z

    .line 5
    invoke-interface {p1}, Lb2/l;->b()V

    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Lb2/m;->a:Z

    :goto_1a
    return-void
.end method

###### Class b2.m.a (b2.m$a)
.class synthetic Lb2/m$a;
.super Ljava/lang/Object;
.source "ResourceRecycler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb2/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class b2.m.b (b2.m$b)
.class Lb2/m$b;
.super Ljava/lang/Object;
.source "ResourceRecycler.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb2/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lb2/m$a;)V
    .registers 2

    .line 2
    invoke-direct {p0}, Lb2/m$b;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 4

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_d

    .line 2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lb2/l;

    .line 3
    invoke-interface {p1}, Lb2/l;->b()V

    return v1

    :cond_d
    const/4 p1, 0x0

    return p1
.end method
