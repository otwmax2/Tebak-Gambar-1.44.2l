###### Class a0.b (a0.b)
.class La0/b;
.super Landroid/widget/Filter;
.source "CursorFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La0/b$a;
    }
.end annotation


# instance fields
.field a:La0/b$a;


# direct methods
.method constructor <init>(La0/b$a;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    .line 2
    iput-object p1, p0, La0/b;->a:La0/b$a;

    return-void
.end method


# virtual methods
.method public convertResultToString(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .registers 3

    .line 1
    iget-object v0, p0, La0/b;->a:La0/b$a;

    check-cast p1, Landroid/database/Cursor;

    invoke-interface {v0, p1}, La0/b$a;->d(Landroid/database/Cursor;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .registers 4

    .line 1
    iget-object v0, p0, La0/b;->a:La0/b$a;

    invoke-interface {v0, p1}, La0/b$a;->e(Ljava/lang/CharSequence;)Landroid/database/Cursor;

    move-result-object p1

    .line 2
    new-instance v0, Landroid/widget/Filter$FilterResults;

    invoke-direct {v0}, Landroid/widget/Filter$FilterResults;-><init>()V

    if-eqz p1, :cond_16

    .line 3
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    iput v1, v0, Landroid/widget/Filter$FilterResults;->count:I

    .line 4
    iput-object p1, v0, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    goto :goto_1c

    :cond_16
    const/4 p1, 0x0

    .line 5
    iput p1, v0, Landroid/widget/Filter$FilterResults;->count:I

    const/4 p1, 0x0

    .line 6
    iput-object p1, v0, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    :goto_1c
    return-object v0
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .registers 3

    .line 1
    iget-object p1, p0, La0/b;->a:La0/b$a;

    invoke-interface {p1}, La0/b$a;->b()Landroid/database/Cursor;

    move-result-object p1

    .line 2
    iget-object p2, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    if-eqz p2, :cond_13

    if-eq p2, p1, :cond_13

    .line 3
    iget-object p1, p0, La0/b;->a:La0/b$a;

    check-cast p2, Landroid/database/Cursor;

    invoke-interface {p1, p2}, La0/b$a;->a(Landroid/database/Cursor;)V

    :cond_13
    return-void
.end method

###### Class a0.b.a (a0.b$a)
.class interface abstract La0/b$a;
.super Ljava/lang/Object;
.source "CursorFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La0/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "a"
.end annotation


# virtual methods
.method public abstract a(Landroid/database/Cursor;)V
.end method

.method public abstract b()Landroid/database/Cursor;
.end method

.method public abstract d(Landroid/database/Cursor;)Ljava/lang/CharSequence;
.end method

.method public abstract e(Ljava/lang/CharSequence;)Landroid/database/Cursor;
.end method
