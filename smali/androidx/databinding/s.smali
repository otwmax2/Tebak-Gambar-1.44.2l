###### Class androidx.databinding.s (androidx.databinding.s)
.class public Landroidx/databinding/s;
.super Landroidx/databinding/c;
.source "PropertyChangeRegistry.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/databinding/c<",
        "Landroidx/databinding/j$a;",
        "Landroidx/databinding/j;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static final t:Landroidx/databinding/c$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/databinding/c$a<",
            "Landroidx/databinding/j$a;",
            "Landroidx/databinding/j;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Landroidx/databinding/s$a;

    invoke-direct {v0}, Landroidx/databinding/s$a;-><init>()V

    sput-object v0, Landroidx/databinding/s;->t:Landroidx/databinding/c$a;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 1
    sget-object v0, Landroidx/databinding/s;->t:Landroidx/databinding/c$a;

    invoke-direct {p0, v0}, Landroidx/databinding/c;-><init>(Landroidx/databinding/c$a;)V

    return-void
.end method

###### Class androidx.databinding.s.a (androidx.databinding.s$a)
.class Landroidx/databinding/s$a;
.super Landroidx/databinding/c$a;
.source "PropertyChangeRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/databinding/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/databinding/c$a<",
        "Landroidx/databinding/j$a;",
        "Landroidx/databinding/j;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Landroidx/databinding/c$a;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;)V
    .registers 5

    .line 1
    check-cast p1, Landroidx/databinding/j$a;

    check-cast p2, Landroidx/databinding/j;

    check-cast p4, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/databinding/s$a;->b(Landroidx/databinding/j$a;Landroidx/databinding/j;ILjava/lang/Void;)V

    return-void
.end method

.method public b(Landroidx/databinding/j$a;Landroidx/databinding/j;ILjava/lang/Void;)V
    .registers 5

    .line 1
    invoke-virtual {p1, p2, p3}, Landroidx/databinding/j$a;->d(Landroidx/databinding/j;I)V

    return-void
.end method
