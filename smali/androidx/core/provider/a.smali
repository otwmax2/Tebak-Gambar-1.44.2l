###### Class androidx.core.provider.a (androidx.core.provider.a)
.class Landroidx/core/provider/a;
.super Ljava/lang/Object;
.source "CallbackWithHandler.java"


# instance fields
.field private final a:Landroidx/core/provider/g$c;

.field private final b:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroidx/core/provider/g$c;Landroid/os/Handler;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/core/provider/a;->a:Landroidx/core/provider/g$c;

    .line 3
    iput-object p2, p0, Landroidx/core/provider/a;->b:Landroid/os/Handler;

    return-void
.end method

.method private a(I)V
    .registers 5

    .line 1
    iget-object v0, p0, Landroidx/core/provider/a;->a:Landroidx/core/provider/g$c;

    .line 2
    iget-object v1, p0, Landroidx/core/provider/a;->b:Landroid/os/Handler;

    new-instance v2, Landroidx/core/provider/a$b;

    invoke-direct {v2, p0, v0, p1}, Landroidx/core/provider/a$b;-><init>(Landroidx/core/provider/a;Landroidx/core/provider/g$c;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private c(Landroid/graphics/Typeface;)V
    .registers 5

    .line 1
    iget-object v0, p0, Landroidx/core/provider/a;->a:Landroidx/core/provider/g$c;

    .line 2
    iget-object v1, p0, Landroidx/core/provider/a;->b:Landroid/os/Handler;

    new-instance v2, Landroidx/core/provider/a$a;

    invoke-direct {v2, p0, v0, p1}, Landroidx/core/provider/a$a;-><init>(Landroidx/core/provider/a;Landroidx/core/provider/g$c;Landroid/graphics/Typeface;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method b(Landroidx/core/provider/f$e;)V
    .registers 3

    .line 1
    invoke-virtual {p1}, Landroidx/core/provider/f$e;->a()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2
    iget-object p1, p1, Landroidx/core/provider/f$e;->a:Landroid/graphics/Typeface;

    invoke-direct {p0, p1}, Landroidx/core/provider/a;->c(Landroid/graphics/Typeface;)V

    goto :goto_11

    .line 3
    :cond_c
    iget p1, p1, Landroidx/core/provider/f$e;->b:I

    invoke-direct {p0, p1}, Landroidx/core/provider/a;->a(I)V

    :goto_11
    return-void
.end method

###### Class androidx.core.provider.a.RunnableC0032a (androidx.core.provider.a$a)
.class Landroidx/core/provider/a$a;
.super Ljava/lang/Object;
.source "CallbackWithHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/core/provider/a;->c(Landroid/graphics/Typeface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic o:Landroidx/core/provider/g$c;

.field final synthetic p:Landroid/graphics/Typeface;

.field final synthetic q:Landroidx/core/provider/a;


# direct methods
.method constructor <init>(Landroidx/core/provider/a;Landroidx/core/provider/g$c;Landroid/graphics/Typeface;)V
    .registers 4

    .line 1
    iput-object p1, p0, Landroidx/core/provider/a$a;->q:Landroidx/core/provider/a;

    iput-object p2, p0, Landroidx/core/provider/a$a;->o:Landroidx/core/provider/g$c;

    iput-object p3, p0, Landroidx/core/provider/a$a;->p:Landroid/graphics/Typeface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/core/provider/a$a;->o:Landroidx/core/provider/g$c;

    iget-object v1, p0, Landroidx/core/provider/a$a;->p:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroidx/core/provider/g$c;->b(Landroid/graphics/Typeface;)V

    return-void
.end method

###### Class androidx.core.provider.a.b (androidx.core.provider.a$b)
.class Landroidx/core/provider/a$b;
.super Ljava/lang/Object;
.source "CallbackWithHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/core/provider/a;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic o:Landroidx/core/provider/g$c;

.field final synthetic p:I

.field final synthetic q:Landroidx/core/provider/a;


# direct methods
.method constructor <init>(Landroidx/core/provider/a;Landroidx/core/provider/g$c;I)V
    .registers 4

    .line 1
    iput-object p1, p0, Landroidx/core/provider/a$b;->q:Landroidx/core/provider/a;

    iput-object p2, p0, Landroidx/core/provider/a$b;->o:Landroidx/core/provider/g$c;

    iput p3, p0, Landroidx/core/provider/a$b;->p:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/core/provider/a$b;->o:Landroidx/core/provider/g$c;

    iget v1, p0, Landroidx/core/provider/a$b;->p:I

    invoke-virtual {v0, v1}, Landroidx/core/provider/g$c;->a(I)V

    return-void
.end method
