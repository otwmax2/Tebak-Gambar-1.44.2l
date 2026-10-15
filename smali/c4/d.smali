###### Class c4.d (c4.d)
.class public interface abstract Lc4/d;
.super Ljava/lang/Object;
.source "CircularRevealWidget.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc4/d$d;,
        Lc4/d$b;,
        Lc4/d$c;,
        Lc4/d$e;
    }
.end annotation


# virtual methods
.method public abstract a()V
.end method

.method public abstract b()V
.end method

.method public abstract getCircularRevealScrimColor()I
.end method

.method public abstract getRevealInfo()Lc4/d$e;
.end method

.method public abstract setCircularRevealOverlayDrawable(Landroid/graphics/drawable/Drawable;)V
.end method

.method public abstract setCircularRevealScrimColor(I)V
.end method

.method public abstract setRevealInfo(Lc4/d$e;)V
.end method

###### Class c4.d.a (c4.d$a)
.class synthetic Lc4/d$a;
.super Ljava/lang/Object;
.source "CircularRevealWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc4/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class c4.d.b (c4.d$b)
.class public Lc4/d$b;
.super Ljava/lang/Object;
.source "CircularRevealWidget.java"

# interfaces
.implements Landroid/animation/TypeEvaluator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc4/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/animation/TypeEvaluator<",
        "Lc4/d$e;",
        ">;"
    }
.end annotation


# static fields
.field public static final b:Landroid/animation/TypeEvaluator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/animation/TypeEvaluator<",
            "Lc4/d$e;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Lc4/d$e;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lc4/d$b;

    invoke-direct {v0}, Lc4/d$b;-><init>()V

    sput-object v0, Lc4/d$b;->b:Landroid/animation/TypeEvaluator;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lc4/d$e;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lc4/d$e;-><init>(Lc4/d$a;)V

    iput-object v0, p0, Lc4/d$b;->a:Lc4/d$e;

    return-void
.end method


# virtual methods
.method public a(FLc4/d$e;Lc4/d$e;)Lc4/d$e;
    .registers 8

    .line 1
    iget-object v0, p0, Lc4/d$b;->a:Lc4/d$e;

    iget v1, p2, Lc4/d$e;->a:F

    iget v2, p3, Lc4/d$e;->a:F

    .line 2
    invoke-static {v1, v2, p1}, Lj4/a;->c(FFF)F

    move-result v1

    iget v2, p2, Lc4/d$e;->b:F

    iget v3, p3, Lc4/d$e;->b:F

    .line 3
    invoke-static {v2, v3, p1}, Lj4/a;->c(FFF)F

    move-result v2

    iget p2, p2, Lc4/d$e;->c:F

    iget p3, p3, Lc4/d$e;->c:F

    .line 4
    invoke-static {p2, p3, p1}, Lj4/a;->c(FFF)F

    move-result p1

    .line 5
    invoke-virtual {v0, v1, v2, p1}, Lc4/d$e;->a(FFF)V

    .line 6
    iget-object p1, p0, Lc4/d$b;->a:Lc4/d$e;

    return-object p1
.end method

.method public bridge synthetic evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 1
    check-cast p2, Lc4/d$e;

    check-cast p3, Lc4/d$e;

    invoke-virtual {p0, p1, p2, p3}, Lc4/d$b;->a(FLc4/d$e;Lc4/d$e;)Lc4/d$e;

    move-result-object p1

    return-object p1
.end method

###### Class c4.d.c (c4.d$c)
.class public Lc4/d$c;
.super Landroid/util/Property;
.source "CircularRevealWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc4/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Property<",
        "Lc4/d;",
        "Lc4/d$e;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lc4/d;",
            "Lc4/d$e;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lc4/d$c;

    const-string v1, "circularReveal"

    invoke-direct {v0, v1}, Lc4/d$c;-><init>(Ljava/lang/String;)V

    sput-object v0, Lc4/d$c;->a:Landroid/util/Property;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 1
    const-class v0, Lc4/d$e;

    invoke-direct {p0, v0, p1}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Lc4/d;)Lc4/d$e;
    .registers 2

    .line 1
    invoke-interface {p1}, Lc4/d;->getRevealInfo()Lc4/d$e;

    move-result-object p1

    return-object p1
.end method

.method public b(Lc4/d;Lc4/d$e;)V
    .registers 3

    .line 1
    invoke-interface {p1, p2}, Lc4/d;->setRevealInfo(Lc4/d$e;)V

    return-void
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1
    check-cast p1, Lc4/d;

    invoke-virtual {p0, p1}, Lc4/d$c;->a(Lc4/d;)Lc4/d$e;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    .line 1
    check-cast p1, Lc4/d;

    check-cast p2, Lc4/d$e;

    invoke-virtual {p0, p1, p2}, Lc4/d$c;->b(Lc4/d;Lc4/d$e;)V

    return-void
.end method

###### Class c4.d.C0092d (c4.d$d)
.class public Lc4/d$d;
.super Landroid/util/Property;
.source "CircularRevealWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc4/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Property<",
        "Lc4/d;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lc4/d;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lc4/d$d;

    const-string v1, "circularRevealScrimColor"

    invoke-direct {v0, v1}, Lc4/d$d;-><init>(Ljava/lang/String;)V

    sput-object v0, Lc4/d$d;->a:Landroid/util/Property;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 1
    const-class v0, Ljava/lang/Integer;

    invoke-direct {p0, v0, p1}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Lc4/d;)Ljava/lang/Integer;
    .registers 2

    .line 1
    invoke-interface {p1}, Lc4/d;->getCircularRevealScrimColor()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public b(Lc4/d;Ljava/lang/Integer;)V
    .registers 3

    .line 1
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {p1, p2}, Lc4/d;->setCircularRevealScrimColor(I)V

    return-void
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1
    check-cast p1, Lc4/d;

    invoke-virtual {p0, p1}, Lc4/d$d;->a(Lc4/d;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    .line 1
    check-cast p1, Lc4/d;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Lc4/d$d;->b(Lc4/d;Ljava/lang/Integer;)V

    return-void
.end method

###### Class c4.d.e (c4.d$e)
.class public Lc4/d$e;
.super Ljava/lang/Object;
.source "CircularRevealWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc4/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# instance fields
.field public a:F

.field public b:F

.field public c:F


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(FFF)V
    .registers 4

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput p1, p0, Lc4/d$e;->a:F

    .line 5
    iput p2, p0, Lc4/d$e;->b:F

    .line 6
    iput p3, p0, Lc4/d$e;->c:F

    return-void
.end method

.method synthetic constructor <init>(Lc4/d$a;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lc4/d$e;-><init>()V

    return-void
.end method


# virtual methods
.method public a(FFF)V
    .registers 4

    .line 1
    iput p1, p0, Lc4/d$e;->a:F

    .line 2
    iput p2, p0, Lc4/d$e;->b:F

    .line 3
    iput p3, p0, Lc4/d$e;->c:F

    return-void
.end method
