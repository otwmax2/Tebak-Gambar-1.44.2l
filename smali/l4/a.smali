###### Class l4.a (l4.a)
.class public final Ll4/a;
.super Ll4/f;
.source "CancelableFontCallback.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ll4/a$a;
    }
.end annotation


# instance fields
.field private final a:Landroid/graphics/Typeface;

.field private final b:Ll4/a$a;

.field private c:Z


# direct methods
.method public constructor <init>(Ll4/a$a;Landroid/graphics/Typeface;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ll4/f;-><init>()V

    .line 2
    iput-object p2, p0, Ll4/a;->a:Landroid/graphics/Typeface;

    .line 3
    iput-object p1, p0, Ll4/a;->b:Ll4/a$a;

    return-void
.end method

.method private d(Landroid/graphics/Typeface;)V
    .registers 3

    .line 1
    iget-boolean v0, p0, Ll4/a;->c:Z

    if-nez v0, :cond_9

    .line 2
    iget-object v0, p0, Ll4/a;->b:Ll4/a$a;

    invoke-interface {v0, p1}, Ll4/a$a;->a(Landroid/graphics/Typeface;)V

    :cond_9
    return-void
.end method


# virtual methods
.method public a(I)V
    .registers 2

    .line 1
    iget-object p1, p0, Ll4/a;->a:Landroid/graphics/Typeface;

    invoke-direct {p0, p1}, Ll4/a;->d(Landroid/graphics/Typeface;)V

    return-void
.end method

.method public b(Landroid/graphics/Typeface;Z)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Ll4/a;->d(Landroid/graphics/Typeface;)V

    return-void
.end method

.method public c()V
    .registers 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Ll4/a;->c:Z

    return-void
.end method

###### Class l4.a.InterfaceC0200a (l4.a$a)
.class public interface abstract Ll4/a$a;
.super Ljava/lang/Object;
.source "CancelableFontCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ll4/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "a"
.end annotation


# virtual methods
.method public abstract a(Landroid/graphics/Typeface;)V
.end method
