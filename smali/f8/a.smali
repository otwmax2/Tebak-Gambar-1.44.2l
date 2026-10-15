###### Class f8.a (f8.a)
.class abstract Lf8/a;
.super Ljava/lang/Object;
.source "Action.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf8/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final a:Lf8/t;

.field final b:Lf8/w;

.field final c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "TT;>;"
        }
    .end annotation
.end field

.field final d:Z

.field final e:I

.field final f:I

.field final g:I

.field final h:Landroid/graphics/drawable/Drawable;

.field final i:Ljava/lang/String;

.field final j:Ljava/lang/Object;

.field k:Z

.field l:Z


# direct methods
.method constructor <init>(Lf8/t;Ljava/lang/Object;Lf8/w;IIILandroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;Z)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf8/t;",
            "TT;",
            "Lf8/w;",
            "III",
            "Landroid/graphics/drawable/Drawable;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lf8/a;->a:Lf8/t;

    .line 3
    iput-object p3, p0, Lf8/a;->b:Lf8/w;

    if-nez p2, :cond_b

    const/4 p1, 0x0

    goto :goto_13

    .line 4
    :cond_b
    new-instance p3, Lf8/a$a;

    iget-object p1, p1, Lf8/t;->k:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {p3, p0, p2, p1}, Lf8/a$a;-><init>(Lf8/a;Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    move-object p1, p3

    :goto_13
    iput-object p1, p0, Lf8/a;->c:Ljava/lang/ref/WeakReference;

    .line 5
    iput p4, p0, Lf8/a;->e:I

    .line 6
    iput p5, p0, Lf8/a;->f:I

    .line 7
    iput-boolean p10, p0, Lf8/a;->d:Z

    .line 8
    iput p6, p0, Lf8/a;->g:I

    .line 9
    iput-object p7, p0, Lf8/a;->h:Landroid/graphics/drawable/Drawable;

    .line 10
    iput-object p8, p0, Lf8/a;->i:Ljava/lang/String;

    if-eqz p9, :cond_24

    goto :goto_25

    :cond_24
    move-object p9, p0

    .line 11
    :goto_25
    iput-object p9, p0, Lf8/a;->j:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method a()V
    .registers 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lf8/a;->l:Z

    return-void
.end method

.method abstract b(Landroid/graphics/Bitmap;Lf8/t$e;)V
.end method

.method abstract c()V
.end method

.method d()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lf8/a;->i:Ljava/lang/String;

    return-object v0
.end method

.method e()I
    .registers 2

    .line 1
    iget v0, p0, Lf8/a;->e:I

    return v0
.end method

.method f()I
    .registers 2

    .line 1
    iget v0, p0, Lf8/a;->f:I

    return v0
.end method

.method g()Lf8/t;
    .registers 2

    .line 1
    iget-object v0, p0, Lf8/a;->a:Lf8/t;

    return-object v0
.end method

.method h()Lf8/t$f;
    .registers 2

    .line 1
    iget-object v0, p0, Lf8/a;->b:Lf8/w;

    iget-object v0, v0, Lf8/w;->r:Lf8/t$f;

    return-object v0
.end method

.method i()Lf8/w;
    .registers 2

    .line 1
    iget-object v0, p0, Lf8/a;->b:Lf8/w;

    return-object v0
.end method

.method j()Ljava/lang/Object;
    .registers 2

    .line 1
    iget-object v0, p0, Lf8/a;->j:Ljava/lang/Object;

    return-object v0
.end method

.method k()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lf8/a;->c:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_a

    :cond_6
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    :goto_a
    return-object v0
.end method

.method l()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lf8/a;->l:Z

    return v0
.end method

.method m()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lf8/a;->k:Z

    return v0
.end method

###### Class f8.a.C0156a (f8.a$a)
.class Lf8/a$a;
.super Ljava/lang/ref/WeakReference;
.source "Action.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf8/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/ref/WeakReference<",
        "TM;>;"
    }
.end annotation


# instance fields
.field final a:Lf8/a;


# direct methods
.method public constructor <init>(Lf8/a;Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf8/a;",
            "TM;",
            "Ljava/lang/ref/ReferenceQueue<",
            "-TM;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p2, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 2
    iput-object p1, p0, Lf8/a$a;->a:Lf8/a;

    return-void
.end method
