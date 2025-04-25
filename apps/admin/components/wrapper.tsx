import React, { ReactNode } from 'react';
import { AppSidebar } from './app-sidebar';
import { SiteHeader } from './site-header';
import { SidebarProvider, SidebarInset } from './ui/sidebar';

export default function Wrapper(props: { children: ReactNode; title: string }) {
  return (
    <SidebarProvider
      style={
        {
          '--sidebar-width': 'calc(var(--spacing) * 72)',
          '--header-height': 'calc(var(--spacing) * 12)',
        } as React.CSSProperties
      }
    >
      <AppSidebar variant="inset" />
      <SidebarInset>
        <SiteHeader title={props.title} />
        <div className="flex flex-1 flex-col">{props.children}</div>
      </SidebarInset>
    </SidebarProvider>
  );
}
